// Some numerical data is initialized as -1 even when it doesn't need initialization to help the JIT infer types

// 代码来自 https://github.com/101arrowz/fzstd
// 先放着，代码量比较多，慢慢适配到as

// Huffman decoding table
interface HDT {
  // initial bits
  b: number;
  // symbols
  s: Uint8Array;
  // num bits
  n: Uint8Array;
}

// FSE decoding table
interface FSEDT extends HDT {
  // next state
  t: Uint16Array;
}

// decompress Zstandard state
interface DZstdState {
  // byte
  b: number;
  // out byte
  y: number;
  // dictionary ID
  d: number;
  // window
  w: Uint8Array;
  // max block size
  m: number;
  // uncompressed size
  u: number;
  // has checksum
  c: number;
  // offsets
  o: Int32Array;
  // window head
  e: number;
  // last huffman decoding table
  h?: HDT;
  // last FSE decoding tables
  t?: [FSEDT, FSEDT, FSEDT];
  // last block
  l: number;
}

const slc = (v: Uint8Array, s: number, e?: number) => {
  return v.slice(s, e);
};

const fill = (v: Uint8Array, n: number, s?: number, e?: number) => {
  return v.fill(n, s, e);
};

const cpw = (v: Uint8Array, t: number, s: number, e?: number) => {
  v.copyWithin(t, s, e);
};

/**
 * Codes for errors generated within this library
 */
export const ZstdErrorCode = {
  InvalidData: 0,
  WindowSizeTooLarge: 1,
  InvalidBlockType: 2,
  FSEAccuracyTooHigh: 3,
  DistanceTooFarBack: 4,
  UnexpectedEOF: 5,
};

const rb = (d: Uint8Array, b: number, n: number) => {
  let i = 0,
    o = 0;
  for (; i < n; ++i) o |= d[b++] << (i << 3);
  return o;
};

const b4 = (d: Uint8Array, b: number) =>
  (d[b] | (d[b + 1] << 8) | (d[b + 2] << 16) | (d[b + 3] << 24)) >>> 0;

// read Zstandard frame header
const rzfh = (dat: Uint8Array, w?: Uint8Array | 1): number | DZstdState => {
  const n3 = dat[0] | (dat[1] << 8) | (dat[2] << 16);
  if (n3 == 0x2fb528 && dat[3] == 253) {
    // Zstandard
    const flg = dat[4];
    //    single segment       checksum             dict flag     frame content flag
    const ss = (flg >> 5) & 1,
      cc = (flg >> 2) & 1,
      df = flg & 3,
      fcf = flg >> 6;
    if (flg & 8) throw new Error('0');
    // byte
    let bt = 6 - ss;
    // dict bytes
    const db = df == 3 ? 4 : df;
    // dictionary id
    const di = rb(dat, bt, db);
    bt += db;
    // frame size bytes
    const fsb = fcf ? 1 << fcf : ss;
    // frame source size
    const fss = rb(dat, bt, fsb) + (fcf == 1 && 256 ? 1 : 0);
    // window size
    let ws = fss;
    if (!ss) {
      // window descriptor
      const wb = 1 << (10 + (dat[5] >> 3));
      ws = wb + (wb >> 3) * (dat[5] & 7);
    }
    if (ws > 2145386496) throw new Error('1');
    const buf = new Uint8Array((w == 1 ? fss || ws : w ? 0 : ws) + 12);
    (buf[0] = 1), (buf[4] = 4), (buf[8] = 8);
    return {
      b: bt + fsb,
      y: 0,
      l: 0,
      d: di,
      w: w && w != 1 ? w : buf.subarray(12),
      e: ws,
      o: Int32Array.wrap(buf.buffer, 0, 3),
      u: fss,
      c: cc,
      m: Math.min(131072, ws),
    };
  } else if (((n3 >> 4) | (dat[3] << 20)) == 0x184d2a5) {
    // skippable
    return b4(dat, 4) + 8;
  }
  throw new Error('0');
};

// most significant bit for nonzero
const msb = (val: number) => {
  let bits = 0;
  for (; 1 << bits <= val; ++bits);
  return bits - 1;
};

// read finite state entropy
const rfse = (dat: Uint8Array, bt: number, mal: number): [number, FSEDT] => {
  // table pos
  let tpos = (bt << 3) + 4;
  // accuracy log
  const al = (dat[bt] & 15) + 5;
  if (al > mal) throw new Error('3');
  // size
  const sz = 1 << al;
  // probabilities symbols  repeat   index   high threshold
  let probs = sz,
    sym = -1,
    re = -1,
    i = -1,
    ht = sz;
  // optimization: single allocation is much faster
  const buf = new ArrayBuffer(512 + (sz << 2));
  const freq = Int16Array.wrap(buf, 0, 256);
  // same view as freq
  const dstate = Uint16Array.wrap(buf, 0, 256);
  const nstate = Uint16Array.wrap(buf, 512, sz);
  const bb1 = 512 + (sz << 1);
  const syms = Uint8Array.wrap(buf, bb1, sz);
  const nbits = Uint8Array.wrap(buf, bb1 + sz);
  while (sym < 255 && probs > 0) {
    const bits = msb(probs + 1);
    const cbt = tpos >> 3;
    // mask
    const msk = (1 << (bits + 1)) - 1;
    let val =
      ((dat[cbt] | (dat[cbt + 1] << 8) | (dat[cbt + 2] << 16)) >> (tpos & 7)) &
      msk;
    // mask (1 fewer bit)
    const msk1fb = (1 << bits) - 1;
    // max small value
    const msv = msk - probs - 1;
    // small value
    const sval = val & msk1fb;
    if (sval < msv) (tpos += bits), (val = sval);
    else {
      tpos += bits + 1;
      if (val > msk1fb) val -= msv;
    }
    freq[++sym] = --val;
    if (val == -1) {
      probs += val;
      syms[--ht] = sym;
    } else probs -= val;
    if (!val) {
      do {
        // repeat byte
        const rbt = tpos >> 3;
        re = ((dat[rbt] | (dat[rbt + 1] << 8)) >> (tpos & 7)) & 3;
        tpos += 2;
        sym += re;
      } while (re == 3);
    }
  }
  if (sym > 255 || probs) throw new Error('0');
  let sympos = 0;
  // sym step (coprime with sz - formula from zstd source)
  const sstep = (sz >> 1) + (sz >> 3) + 3;
  // sym mask
  const smask = sz - 1;
  for (let s = 0; s <= sym; ++s) {
    const sf = freq[s];
    if (sf < 1) {
      dstate[s] = -sf;
      continue;
    }
    // This is split into two loops in zstd to avoid branching, but as JS is higher-level that is unnecessary
    for (i = 0; i < sf; ++i) {
      syms[sympos] = s;
      do {
        sympos = (sympos + sstep) & smask;
      } while (sympos >= ht);
    }
  }
  // After spreading symbols, should be zero again
  if (sympos) throw new Error('0');
  for (i = 0; i < sz; ++i) {
    // next state
    const ns = dstate[syms[i]]++;
    // num bits
    const nb = (nbits[i] = al - msb(ns));
    nstate[i] = (ns << nb) - sz;
  }
  return [
    (tpos + 7) >> 3,
    {
      b: al,
      s: syms,
      n: nbits,
      t: nstate,
    },
  ];
};

// read huffman
const rhu = (dat: Uint8Array, bt: number): [number, HDT] => {
  //  index  weight count
  let i = 0,
    wc = -1;
  //    buffer             header byte
  const buf = new Uint8Array(292),
    hb = dat[bt];
  // huffman weights
  const hw = buf.subarray(0, 256);
  // rank count
  const rc = buf.subarray(256, 268);
  // rank index
  const ri = Uint16Array.wrap(buf.buffer, 268);
  // NOTE: at this point bt is 1 less than expected
  if (hb < 128) {
    // end byte, fse decode table
    const [ebt, fdt] = rfse(dat, bt + 1, 6);
    bt += hb;
    const epos = ebt << 3;
    // last byte
    const lb = dat[bt];
    if (!lb) throw new Error('0');
    //  state1   state2   state1 bits   state2 bits
    let st1 = 0,
      st2 = 0,
      btr1 = fdt.b,
      btr2 = btr1;
    // fse pos
    // pre-increment to account for original deficit of 1
    let fpos = (++bt << 3) - 8 + msb(lb);
    for (;;) {
      fpos -= btr1;
      if (fpos < epos) break;
      let cbt = fpos >> 3;
      st1 +=
        ((dat[cbt] | (dat[cbt + 1] << 8)) >> (fpos & 7)) & ((1 << btr1) - 1);
      hw[++wc] = fdt.s[st1];
      fpos -= btr2;
      if (fpos < epos) break;
      cbt = fpos >> 3;
      st2 +=
        ((dat[cbt] | (dat[cbt + 1] << 8)) >> (fpos & 7)) & ((1 << btr2) - 1);
      hw[++wc] = fdt.s[st2];
      btr1 = fdt.n[st1];
      st1 = fdt.t[st1];
      btr2 = fdt.n[st2];
      st2 = fdt.t[st2];
    }
    if (++wc > 255) throw new Error('0');
  } else {
    wc = hb - 127;
    for (; i < wc; i += 2) {
      const byte = dat[++bt];
      hw[i] = byte >> 4;
      hw[i + 1] = byte & 15;
    }
    ++bt;
  }
  // weight exponential sum
  let wes = 0;
  for (i = 0; i < wc; ++i) {
    const wt = hw[i];
    // bits must be at most 11, same as weight
    if (wt > 11) throw new Error('0');
    wes += wt && 1 << (wt - 1);
  }
  // max bits
  const mb = msb(wes) + 1;
  // table size
  const ts = 1 << mb;
  // remaining sum
  const rem = ts - wes;
  // must be power of 2
  if (rem & (rem - 1)) throw new Error('0');
  hw[wc++] = msb(rem) + 1;
  for (i = 0; i < wc; ++i) {
    const wt = hw[i];
    ++rc[(hw[i] = wt && mb + 1 - wt)];
  }
  // huf buf
  const hbuf = new Uint8Array(ts << 1);
  //    symbols                      num bits
  const syms = hbuf.subarray(0, ts),
    nb = hbuf.subarray(ts);
  ri[mb] = 0;
  for (i = mb; i > 0; --i) {
    const pv = ri[i];
    fill(nb, i, pv, (ri[i - 1] = pv + rc[i] * (1 << (mb - i))));
  }
  if (ri[0] != ts) throw new Error('0');
  for (i = 0; i < wc; ++i) {
    const bits = hw[i];
    if (bits) {
      const code = ri[bits];
      fill(syms, i, code, (ri[bits] = code + (1 << (mb - bits))));
    }
  }
  return [
    bt,
    {
      n: nb,
      b: mb,
      s: syms,
    },
  ];
};

// Tables generated using this:
// https://gist.github.com/101arrowz/a979452d4355992cbf8f257cbffc9edd

// default literal length table

const dllt = rfse(
  new Uint8Array([
    81, 16, 99, 140, 49, 198, 24, 99, 12, 33, 196, 24, 99, 102, 102, 134, 70,
    146, 4,
  ]),
  0,
  6,
)[1];

// default match length table
const dmlt = /*#__PURE__*/ rfse(
  /*#__PURE__*/ new Uint8Array([
    33, 20, 196, 24, 99, 140, 33, 132, 16, 66, 8, 33, 132, 16, 66, 8, 33, 68,
    68, 68, 68, 68, 68, 68, 68, 36, 9,
  ]),
  0,
  6,
)[1];

// default offset code table
const doct = /*#__PURE__ */ rfse(
  /*#__PURE__*/ new Uint8Array([
    32, 132, 16, 66, 102, 70, 68, 68, 68, 68, 36, 73, 2,
  ]),
  0,
  5,
)[1];

// bits to baseline
const b2bl = (b: Uint8Array, s: number) => {
  const len = b.length,
    bl = new Int32Array(len);
  for (let i = 0; i < len; ++i) {
    bl[i] = s;
    s += 1 << b[i];
  }
  return bl;
};

// literal length bits
const llb = /*#__PURE__ */ new Uint8Array(
  /*#__PURE__ */ new Int32Array([
    0, 0, 0, 0, 16843009, 50528770, 134678020, 202050057, 269422093,
  ]).buffer,
  0,
  36,
);

// literal length baseline
const llbl = /*#__PURE__ */ b2bl(llb, 0);

// match length bits
const mlb = /*#__PURE__ */ new Uint8Array(
  /*#__PURE__ */ new Int32Array([
    0, 0, 0, 0, 0, 0, 0, 0, 16843009, 50528770, 117769220, 185207048, 252579084,
    16,
  ]).buffer,
  0,
  53,
);

// match length baseline
const mlbl = /*#__PURE__ */ b2bl(mlb, 3);

// decode huffman stream
const dhu = (dat: Uint8Array, out: Uint8Array, hu: HDT) => {
  const len = dat.length,
    ss = out.length,
    lb = dat[len - 1],
    msk = (1 << hu.b) - 1,
    eb = -hu.b;
  if (!lb) throw new Error('0');
  let st = 0,
    btr = hu.b,
    pos = (len << 3) - 8 + msb(lb) - btr,
    i = -1;
  for (; pos > eb && i < ss; ) {
    const cbt = pos >> 3;
    const val =
      (dat[cbt] | (dat[cbt + 1] << 8) | (dat[cbt + 2] << 16)) >> (pos & 7);
    st = ((st << btr) | val) & msk;
    out[++i] = hu.s[st];
    pos -= btr = hu.n[st];
  }
  if (pos != eb || i + 1 != ss) throw new Error('0');
};

// decode huffman stream 4x
// TODO: use workers to parallelize
const dhu4 = (dat: Uint8Array, out: Uint8Array, hu: HDT) => {
  let bt = 6;
  const ss = out.length,
    sz1 = (ss + 3) >> 2,
    sz2 = sz1 << 1,
    sz3 = sz1 + sz2;
  dhu(
    dat.subarray(bt, (bt += dat[0] | (dat[1] << 8))),
    out.subarray(0, sz1),
    hu,
  );
  dhu(
    dat.subarray(bt, (bt += dat[2] | (dat[3] << 8))),
    out.subarray(sz1, sz2),
    hu,
  );
  dhu(
    dat.subarray(bt, (bt += dat[4] | (dat[5] << 8))),
    out.subarray(sz2, sz3),
    hu,
  );
  dhu(dat.subarray(bt), out.subarray(sz3), hu);
};

// read Zstandard block
const rzb = (dat: Uint8Array, st: DZstdState, out?: Uint8Array) => {
  let bt = st.b;
  //    byte 0        block type
  const b0 = dat[bt],
    btype = (b0 >> 1) & 3;
  st.l = b0 & 1;
  const sz = (b0 >> 3) | (dat[bt + 1] << 5) | (dat[bt + 2] << 13);
  // end byte for block
  const ebt = (bt += 3) + sz;
  if (btype == 1) {
    if (bt >= dat.length) return;
    st.b = bt + 1;
    if (out) {
      fill(out, dat[bt], st.y, (st.y += sz));
      return out;
    }
    return fill(new Uint8Array(sz), dat[bt]);
  }
  if (ebt > dat.length) return;
  if (btype == 0) {
    st.b = ebt;
    if (out) {
      out.set(dat.subarray(bt, ebt), st.y);
      st.y += sz;
      return out;
    }
    return slc(dat, bt, ebt);
  }
  if (btype == 2) {
    //    byte 3        lit btype     size format
    const b3 = dat[bt],
      lbt = b3 & 3,
      sf = (b3 >> 2) & 3;
    // lit src size  lit cmp sz 4 streams
    let lss = b3 >> 4,
      lcs = 0,
      s4 = 0;
    if (lbt < 2) {
      if (sf & 1) lss |= (dat[++bt] << 4) | (sf & 2 && dat[++bt] << 12);
      else lss = b3 >> 3;
    } else {
      s4 = sf;
      if (sf < 2)
        (lss |= (dat[++bt] & 63) << 4),
          (lcs = (dat[bt] >> 6) | (dat[++bt] << 2));
      else if (sf == 2)
        (lss |= (dat[++bt] << 4) | ((dat[++bt] & 3) << 12)),
          (lcs = (dat[bt] >> 2) | (dat[++bt] << 6));
      else
        (lss |= (dat[++bt] << 4) | ((dat[++bt] & 63) << 12)),
          (lcs = (dat[bt] >> 6) | (dat[++bt] << 2) | (dat[++bt] << 10));
    }
    ++bt;
    // add literals to end - can never overlap with backreferences because unused literals always appended
    let buf = out ? out.subarray(st.y, st.y + st.m) : new Uint8Array(st.m);
    // starting point for literals
    let spl = buf.length - lss;
    if (lbt == 0) buf.set(dat.subarray(bt, (bt += lss)), spl);
    else if (lbt == 1) fill(buf, dat[bt++], spl);
    else {
      // huffman table
      let hu = st.h;
      if (lbt == 2) {
        const hud = rhu(dat, bt);
        // subtract description length
        lcs += bt - (bt = hud[0]);
        st.h = hu = hud[1];
      } else if (!hu) throw new Error('0');
      (s4 ? dhu4 : dhu)(dat.subarray(bt, (bt += lcs)), buf.subarray(spl), hu);
    }
    // num sequences
    let ns = dat[bt++];
    if (ns) {
      if (ns == 255) ns = (dat[bt++] | (dat[bt++] << 8)) + 0x7f00;
      else if (ns > 127) ns = ((ns - 128) << 8) | dat[bt++];
      // symbol compression modes
      const scm = dat[bt++];
      if (scm & 3) throw new Error('0');
      let dts: [FSEDT, FSEDT, FSEDT] = [dmlt, doct, dllt];
      for (let i = 2; i > -1; --i) {
        const md = (scm >> ((i << 1) + 2)) & 3;
        if (md == 1) {
          // rle buf
          const rbuf = new Uint8Array([0, 0, dat[bt++]]);
          dts[i] = {
            s: rbuf.subarray(2, 3),
            n: rbuf.subarray(0, 1),
            t: Uint16Array.wrap(rbuf.buffer, 0, 1),
            b: 0,
          };
        } else if (md == 2) {
          // accuracy log 8 for offsets, 9 for others
          [bt, dts[i]] = rfse(dat, bt, 9 - (i & 1));
        } else if (md == 3) {
          if (!st.t) throw new Error('0');
          dts[i] = st.t[i];
        }
      }
      const [mlt, oct, llt] = (st.t = dts);
      const lb = dat[ebt - 1];
      if (!lb) throw new Error('0')
      let spos = (ebt << 3) - 8 + msb(lb) - llt.b,
        cbt = spos >> 3,
        oubt = 0;
      let lst =
        ((dat[cbt] | (dat[cbt + 1] << 8)) >> (spos & 7)) & ((1 << llt.b) - 1);
      cbt = (spos -= oct.b) >> 3;
      let ost =
        ((dat[cbt] | (dat[cbt + 1] << 8)) >> (spos & 7)) & ((1 << oct.b) - 1);
      cbt = (spos -= mlt.b) >> 3;
      let mst =
        ((dat[cbt] | (dat[cbt + 1] << 8)) >> (spos & 7)) & ((1 << mlt.b) - 1);
      for (++ns; --ns; ) {
        const llc = llt.s[lst];
        const lbtr = llt.n[lst];
        const mlc = mlt.s[mst];
        const mbtr = mlt.n[mst];
        const ofc = oct.s[ost];
        const obtr = oct.n[ost];

        cbt = (spos -= ofc) >> 3;
        const ofp = 1 << ofc;
        let off =
          ofp +
          (((dat[cbt] |
            (dat[cbt + 1] << 8) |
            (dat[cbt + 2] << 16) |
            (dat[cbt + 3] << 24)) >>>
            (spos & 7)) &
            (ofp - 1));
        cbt = (spos -= mlb[mlc]) >> 3;
        let ml =
          mlbl[mlc] +
          (((dat[cbt] | (dat[cbt + 1] << 8) | (dat[cbt + 2] << 16)) >>
            (spos & 7)) &
            ((1 << mlb[mlc]) - 1));
        cbt = (spos -= llb[llc]) >> 3;
        const ll =
          llbl[llc] +
          (((dat[cbt] | (dat[cbt + 1] << 8) | (dat[cbt + 2] << 16)) >>
            (spos & 7)) &
            ((1 << llb[llc]) - 1));

        cbt = (spos -= lbtr) >> 3;
        lst =
          llt.t[lst] +
          (((dat[cbt] | (dat[cbt + 1] << 8)) >> (spos & 7)) &
            ((1 << lbtr) - 1));
        cbt = (spos -= mbtr) >> 3;
        mst =
          mlt.t[mst] +
          (((dat[cbt] | (dat[cbt + 1] << 8)) >> (spos & 7)) &
            ((1 << mbtr) - 1));
        cbt = (spos -= obtr) >> 3;
        ost =
          oct.t[ost] +
          (((dat[cbt] | (dat[cbt + 1] << 8)) >> (spos & 7)) &
            ((1 << obtr) - 1));

        if (off > 3) {
          st.o[2] = st.o[1];
          st.o[1] = st.o[0];
          st.o[0] = off -= 3;
        } else {
          const idx = off - ((ll != 0) as unknown as number);
          if (idx) {
            off = idx == 3 ? st.o[0] - 1 : st.o[idx];
            if (idx > 1) st.o[2] = st.o[1];
            st.o[1] = st.o[0];
            st.o[0] = off;
          } else off = st.o[0];
        }
        for (let i = 0; i < ll; ++i) {
          buf[oubt + i] = buf[spl + i];
        }
        (oubt += ll), (spl += ll);
        let stin = oubt - off;
        if (stin < 0) {
          let len = -stin;
          const bs = st.e + stin;
          if (len > ml) len = ml;
          for (let i = 0; i < len; ++i) {
            buf[oubt + i] = st.w[bs + i];
          }
          (oubt += len), (ml -= len), (stin = 0);
        }
        for (let i = 0; i < ml; ++i) {
          buf[oubt + i] = buf[stin + i];
        }
        oubt += ml;
      }
      if (oubt != spl) {
        while (spl < buf.length) {
          buf[oubt++] = buf[spl++];
        }
      } else oubt = buf.length;
      if (out) st.y += oubt;
      else buf = slc(buf, 0, oubt);
    } else {
      if (out) {
        st.y += lss;
        if (spl) {
          for (let i = 0; i < lss; ++i) {
            buf[i] = buf[spl + i];
          }
        }
      } else if (spl) buf = slc(buf, spl);
    }
    st.b = ebt;
    return buf;
  }
  throw new Error('2')
};

// concat
const cct = (bufs: Uint8Array[], ol: number) => {
  if (bufs.length == 1) return bufs[0];
  const buf = new Uint8Array(ol);
  for (let i = 0, b = 0; i < bufs.length; ++i) {
    const chk = bufs[i];
    buf.set(chk, b);
    b += chk.length;
  }
  return buf;
};

/**
 * Decompresses Zstandard data
 * @param dat The input data
 * @param buf The output buffer. If unspecified, the function will allocate
 *            exactly enough memory to fit the decompressed data. If your
 *            data has multiple frames and you know the output size, specifying
 *            it will yield better performance.
 * @returns The decompressed data
 */
export function decompress(dat: Uint8Array, buf?: Uint8Array) {
  let bt = 0,
    bufs: Uint8Array[] = [],
    nb = +!buf as 0 | 1,
    ol = 0;
  for (; dat.length; ) {
    let st = rzfh(dat, nb || buf);
    if (typeof st == 'object') {
      if (nb) {
        buf = undefined;
        if (st.w.length == st.u) {
          bufs.push((buf = st.w));
          ol += st.u;
        }
      } else if (buf) {
        bufs.push(buf);
        st.e = 0;
      }
      for (; !st.l; ) {
        const blk = rzb(dat, st, buf);
        if (!blk) throw new Error('5');
        if (buf) st.e = st.y;
        else {
          bufs.push(blk);
          ol += blk.length;
          cpw(st.w, 0, blk.length);
          st.w.set(blk, st.w.length - blk.length);
        }
      }
      bt = st.b + st.c * 4;
    } else bt = st;
    dat = dat.subarray(bt);
  }
  return cct(bufs, ol);
}
