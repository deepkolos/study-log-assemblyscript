// 使用方式还得看测试用例
// https://github.com/AssemblyScript/assemblyscript/blob/main/tests/compiler/features/simd.ts

// namespace console {
//   export declare function log(t: i64): void;
// }

export const Float32Array_ID = idof<Float32Array>();

export function SIMD_ADD(
  l1: i32,
  l2: i32,
  l3: i32,
  l4: i32,
  r1: i32,
  r2: i32,
  r3: i32,
  r4: i32,
): i32[] {
  // 写入数据到向量
  // let leftPtr = __alloc(16);
  // store<i16>(leftPtr, l1, 0);
  // store<i16>(leftPtr, l2, 2);
  // store<i16>(leftPtr, l3, 4);
  // store<i16>(leftPtr, l4, 6);
  // const vLeft = v128.load16x4_s(leftPtr);

  // let rightPtr = __alloc(16);
  // store<i16>(rightPtr, r1, 0);
  // store<i16>(rightPtr, r2, 2);
  // store<i16>(rightPtr, r3, 4);
  // store<i16>(rightPtr, r4, 6);
  // const vRight = v128.load16x4_s(rightPtr);

  // 这个v128.load16x4_s有点难理解16x4的含义

  let vLeft = i32x4.splat(0);
  let vRight = i32x4.splat(0);
  vLeft = i32x4.replace_lane(vLeft, 0, l1);
  vLeft = i32x4.replace_lane(vLeft, 1, l2);
  vLeft = i32x4.replace_lane(vLeft, 2, l3);
  vLeft = i32x4.replace_lane(vLeft, 3, l4);

  vRight = i32x4.replace_lane(vRight, 0, r1);
  vRight = i32x4.replace_lane(vRight, 1, r2);
  vRight = i32x4.replace_lane(vRight, 2, r3);
  vRight = i32x4.replace_lane(vRight, 3, r4);

  // 浮点数还需要通过整型转换

  const vOutput = i32x4.add(vLeft, vRight);

  // 从向量读回数据
  const o1 = i32x4.extract_lane(vOutput, 0);
  const o2 = i32x4.extract_lane(vOutput, 1);
  const o3 = i32x4.extract_lane(vOutput, 2);
  const o4 = i32x4.extract_lane(vOutput, 3);

  return [o1, o2, o3, o4];
}

export function SIMD_CALC(
  l1: i32,
  l2: i32,
  l3: i32,
  l4: i32,
  r1: i32,
  r2: i32,
  r3: i32,
  r4: i32,
): i32[] {
  let vLeft = i32x4.splat(0);
  let vRight = i32x4.splat(0);
  vLeft = i32x4.replace_lane(vLeft, 0, l1);
  vLeft = i32x4.replace_lane(vLeft, 1, l2);
  vLeft = i32x4.replace_lane(vLeft, 2, l3);
  vLeft = i32x4.replace_lane(vLeft, 3, l4);

  vRight = i32x4.replace_lane(vRight, 0, r1);
  vRight = i32x4.replace_lane(vRight, 1, r2);
  vRight = i32x4.replace_lane(vRight, 2, r3);
  vRight = i32x4.replace_lane(vRight, 3, r4);

  let vOutput = i32x4.add(vLeft, vRight);
  vOutput = i32x4.mul(vOutput, vRight);
  vOutput = i32x4.sub(vLeft, vOutput);

  // 从向量读回数据
  const o1 = i32x4.extract_lane(vOutput, 0);
  const o2 = i32x4.extract_lane(vOutput, 1);
  const o3 = i32x4.extract_lane(vOutput, 2);
  const o4 = i32x4.extract_lane(vOutput, 3);

  return [o1, o2, o3, o4];
}

const tmpInput = new Float32Array(4);
const tmpInput2 = new Float32Array(4);

export class Mat4 {
  elements: Float32Array;

  constructor() {
    this.elements = new Float32Array(16).fill(0);
  }

  set(
    n11: f32,
    n12: f32,
    n13: f32,
    n14: f32,
    n21: f32,
    n22: f32,
    n23: f32,
    n24: f32,
    n31: f32,
    n32: f32,
    n33: f32,
    n34: f32,
    n41: f32,
    n42: f32,
    n43: f32,
    n44: f32,
  ): void {
    const te = this.elements;

    te[0] = n11;
    te[4] = n12;
    te[8] = n13;
    te[12] = n14;
    te[1] = n21;
    te[5] = n22;
    te[9] = n23;
    te[13] = n24;
    te[2] = n31;
    te[6] = n32;
    te[10] = n33;
    te[14] = n34;
    te[3] = n41;
    te[7] = n42;
    te[11] = n43;
    te[15] = n44;

    // return this;
  }

  fromArray(arr: Float32Array): Mat4 {
    const te = this.elements;

    te[0] = arr[0];
    te[4] = arr[1];
    te[8] = arr[2];
    te[12] = arr[3];
    te[1] = arr[4];
    te[5] = arr[5];
    te[9] = arr[6];
    te[13] = arr[7];
    te[2] = arr[8];
    te[6] = arr[9];
    te[10] = arr[10];
    te[14] = arr[11];
    te[3] = arr[12];
    te[7] = arr[13];
    te[11] = arr[14];
    te[15] = arr[15];

    return this;
  }

  multiply(m: Mat4): Mat4 {
    return this.multiplyMatrices(this, m);
  }

  premultiply(m: Mat4): Mat4 {
    return this.multiplyMatrices(m, this);
  }

  multiplyMatrices(a: Mat4, b: Mat4): Mat4 {
    const ae = a.elements;
    const be = b.elements;
    const te = this.elements;

    const a11 = ae[0],
      a12 = ae[4],
      a13 = ae[8],
      a14 = ae[12];
    const a21 = ae[1],
      a22 = ae[5],
      a23 = ae[9],
      a24 = ae[13];
    const a31 = ae[2],
      a32 = ae[6],
      a33 = ae[10],
      a34 = ae[14];
    const a41 = ae[3],
      a42 = ae[7],
      a43 = ae[11],
      a44 = ae[15];

    const b11 = be[0],
      b12 = be[4],
      b13 = be[8],
      b14 = be[12];
    const b21 = be[1],
      b22 = be[5],
      b23 = be[9],
      b24 = be[13];
    const b31 = be[2],
      b32 = be[6],
      b33 = be[10],
      b34 = be[14];
    const b41 = be[3],
      b42 = be[7],
      b43 = be[11],
      b44 = be[15];

    te[0] = a11 * b11 + a12 * b21 + a13 * b31 + a14 * b41;
    te[4] = a11 * b12 + a12 * b22 + a13 * b32 + a14 * b42;
    te[8] = a11 * b13 + a12 * b23 + a13 * b33 + a14 * b43;
    te[12] = a11 * b14 + a12 * b24 + a13 * b34 + a14 * b44;

    te[1] = a21 * b11 + a22 * b21 + a23 * b31 + a24 * b41;
    te[5] = a21 * b12 + a22 * b22 + a23 * b32 + a24 * b42;
    te[9] = a21 * b13 + a22 * b23 + a23 * b33 + a24 * b43;
    te[13] = a21 * b14 + a22 * b24 + a23 * b34 + a24 * b44;

    te[2] = a31 * b11 + a32 * b21 + a33 * b31 + a34 * b41;
    te[6] = a31 * b12 + a32 * b22 + a33 * b32 + a34 * b42;
    te[10] = a31 * b13 + a32 * b23 + a33 * b33 + a34 * b43;
    te[14] = a31 * b14 + a32 * b24 + a33 * b34 + a34 * b44;

    te[3] = a41 * b11 + a42 * b21 + a43 * b31 + a44 * b41;
    te[7] = a41 * b12 + a42 * b22 + a43 * b32 + a44 * b42;
    te[11] = a41 * b13 + a42 * b23 + a43 * b33 + a44 * b43;
    te[15] = a41 * b14 + a42 * b24 + a43 * b34 + a44 * b44;

    return this;
  }

  multiplyMatricesSIMD(a: Mat4, b: Mat4): void {
    const ae = a.elements;
    const be = b.elements;
    const te = this.elements;

    //#region
    // let r0 = f32x4.splat(be[0]);
    // r0 = f32x4.replace_lane(r0, 1, be[4]);
    // r0 = f32x4.replace_lane(r0, 2, be[8]);
    // r0 = f32x4.replace_lane(r0, 3, be[12]);
    // let r1 = f32x4.splat(be[1]);
    // r1 = f32x4.replace_lane(r1, 1, be[5]);
    // r1 = f32x4.replace_lane(r1, 2, be[9]);
    // r1 = f32x4.replace_lane(r1, 3, be[13]);
    // let r2 = f32x4.splat(be[2]);
    // r2 = f32x4.replace_lane(r2, 1, be[6]);
    // r2 = f32x4.replace_lane(r2, 2, be[10]);
    // r2 = f32x4.replace_lane(r2, 3, be[14]);
    // let r3 = f32x4.splat(be[3]);
    // r3 = f32x4.replace_lane(r3, 1, be[7]);
    // r3 = f32x4.replace_lane(r3, 2, be[11]);
    // r3 = f32x4.replace_lane(r3, 3, be[15]);
    // 貌似性能没啥变化
    const r0 = f32x4.replace_lane(
      f32x4.replace_lane(
        f32x4.replace_lane(f32x4.splat(be[0]), 1, be[4]),
        2,
        be[8],
      ),
      3,
      be[12],
    );
    const r1 = f32x4.replace_lane(
      f32x4.replace_lane(
        f32x4.replace_lane(f32x4.splat(be[1]), 1, be[5]),
        2,
        be[9],
      ),
      3,
      be[13],
    );
    const r2 = f32x4.replace_lane(
      f32x4.replace_lane(
        f32x4.replace_lane(f32x4.splat(be[2]), 1, be[6]),
        2,
        be[10],
      ),
      3,
      be[14],
    );
    const r3 = f32x4.replace_lane(
      f32x4.replace_lane(
        f32x4.replace_lane(f32x4.splat(be[3]), 1, be[7]),
        2,
        be[11],
      ),
      3,
      be[15],
    );

    // let o = f32x4.mul(f32x4.splat(ae[0]), r0);
    // o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[4]), r1));
    // o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[8]), r2));
    // const o0 = f32x4.add(o, f32x4.mul(f32x4.splat(ae[12]), r3));

    // o = f32x4.mul(f32x4.splat(ae[1]), r0);
    // o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[5]), r1));
    // o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[9]), r2));
    // const o1 = f32x4.add(o, f32x4.mul(f32x4.splat(ae[13]), r3));

    // o = f32x4.mul(f32x4.splat(ae[2]), r0);
    // o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[6]), r1));
    // o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[10]), r2));
    // const o2 = f32x4.add(o, f32x4.mul(f32x4.splat(ae[14]), r3));

    // o = f32x4.mul(f32x4.splat(ae[3]), r0);
    // o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[7]), r1));
    // o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[11]), r2));
    // const o3 = f32x4.add(o, f32x4.mul(f32x4.splat(ae[15]), r3));

    // 还挺有规律的, 不过对性能没有明显变化
    const o0 = f32x4.add(
      f32x4.add(
        f32x4.add(
          f32x4.mul(f32x4.splat(ae[0]), r0),
          f32x4.mul(f32x4.splat(ae[4]), r1),
        ),
        f32x4.mul(f32x4.splat(ae[8]), r2),
      ),
      f32x4.mul(f32x4.splat(ae[12]), r3),
    );
    const o1 = f32x4.add(
      f32x4.add(
        f32x4.add(
          f32x4.mul(f32x4.splat(ae[1]), r0),
          f32x4.mul(f32x4.splat(ae[5]), r1),
        ),
        f32x4.mul(f32x4.splat(ae[9]), r2),
      ),
      f32x4.mul(f32x4.splat(ae[13]), r3),
    );
    const o2 = f32x4.add(
      f32x4.add(
        f32x4.add(
          f32x4.mul(f32x4.splat(ae[2]), r0),
          f32x4.mul(f32x4.splat(ae[6]), r1),
        ),
        f32x4.mul(f32x4.splat(ae[10]), r2),
      ),
      f32x4.mul(f32x4.splat(ae[14]), r3),
    );
    const o3 = f32x4.add(
      f32x4.add(
        f32x4.add(
          f32x4.mul(f32x4.splat(ae[3]), r0),
          f32x4.mul(f32x4.splat(ae[7]), r1),
        ),
        f32x4.mul(f32x4.splat(ae[11]), r2),
      ),
      f32x4.mul(f32x4.splat(ae[15]), r3),
    );

    te[0] = f32x4.extract_lane(o0, 0);
    te[4] = f32x4.extract_lane(o0, 1);
    te[8] = f32x4.extract_lane(o0, 2);
    te[12] = f32x4.extract_lane(o0, 3);

    te[1] = f32x4.extract_lane(o1, 0);
    te[5] = f32x4.extract_lane(o1, 1);
    te[9] = f32x4.extract_lane(o1, 2);
    te[13] = f32x4.extract_lane(o1, 3);

    te[2] = f32x4.extract_lane(o2, 0);
    te[6] = f32x4.extract_lane(o2, 1);
    te[10] = f32x4.extract_lane(o2, 2);
    te[14] = f32x4.extract_lane(o2, 3);

    te[3] = f32x4.extract_lane(o3, 0);
    te[7] = f32x4.extract_lane(o3, 1);
    te[11] = f32x4.extract_lane(o3, 2);
    te[15] = f32x4.extract_lane(o3, 3);
  }

  multiplyMatricesSIMDWithLoop(a: Mat4, b: Mat4): Mat4 {
    const ae = a.elements;
    const be = b.elements;

    let l: v128;
    let r: v128;
    let o: v128;

    // 多了不少加法指令, 比js还慢, 这就有点尴尬了hhh

    for (let i: u8 = 0; i < 4; i++) {
      o = f32x4.splat(0);
      for (let j: u8 = 0; j < 4; j++) {
        l = f32x4.splat(ae[i + (j << 2)]);
        tmpInput[0] = be[0 + j];
        tmpInput[1] = be[4 + j];
        tmpInput[2] = be[8 + j];
        tmpInput[3] = be[12 + j];
        r = v128.load(tmpInput.dataStart);
        o = f32x4.add(o, f32x4.mul(l, r));
      }

      v128.store(tmpInput.dataStart, o);
      this.elements[0 + i] = tmpInput[0];
      this.elements[4 + i] = tmpInput[1];
      this.elements[8 + i] = tmpInput[2];
      this.elements[12 + i] = tmpInput[3];
    }

    return this;
  }

  multiplyMatricesSIMD_VOID(): void {}

  test_loop_in_wasm(mat: Mat4, loopCount: u32): void {
    for (let i: u32 = 0; i < loopCount; i++) {
      mat.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      this.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      this.multiplyMatricesSIMD(this, mat);
    }
  }
}

// 验证v128.load的参数
export function test_v128_load(): Uint8Array {
  const arr = new Uint8Array(32);

  for (let i: u8 = 0; i < 32; i++) {
    arr[i] = i;
  }

  let vec = v128.load(arr.dataStart, 16);
  arr[16] = 33;
  // 加载后不影响v128内的值
  const out = new Uint8Array(16);
  out[0] = i8x16.extract_lane_u(vec, 0);
  out[1] = i8x16.extract_lane_u(vec, 1);
  out[2] = i8x16.extract_lane_u(vec, 2);
  out[3] = i8x16.extract_lane_u(vec, 3);
  out[4] = i8x16.extract_lane_u(vec, 4);
  out[5] = i8x16.extract_lane_u(vec, 5);
  out[6] = i8x16.extract_lane_u(vec, 6);
  out[7] = i8x16.extract_lane_u(vec, 7);
  out[8] = i8x16.extract_lane_u(vec, 8);
  out[9] = i8x16.extract_lane_u(vec, 9);
  out[10] = i8x16.extract_lane_u(vec, 10);
  out[11] = i8x16.extract_lane_u(vec, 11);
  out[12] = i8x16.extract_lane_u(vec, 12);
  out[13] = i8x16.extract_lane_u(vec, 13);
  out[14] = i8x16.extract_lane_u(vec, 14);
  out[15] = i8x16.extract_lane_u(vec, 15);

  return out;
}

// 验证v128.store的参数
export function test_v128_store(): Float32Array {
  const arr = new Float32Array(16);

  for (let i: u8 = 0; i < 16; i++) arr[i] = i;

  // 列主序, 读取第一行和第二行存储结果到第三行
  const row0 = v128.load(arr.dataStart, 0);
  const row1 = v128.load(arr.dataStart, 4);
  const result = f32x4.add(row0, row1);

  v128.store(arr.dataStart, row0); // immAlign 的参数貌似不太理解
  // v128.store(arr.dataStart, result, 8, 4 * 4);

  return arr;
}

export function test_v128_load_cost(): void {
  v128.load(tmpInput.dataStart);
}

let tmpv128 = v128.load(tmpInput.dataStart);
export function test_v128_store_cost(): void {
  v128.store(tmpInput.dataStart, tmpv128);
}

export function test_v128_splat_cost(): void {
  f32x4.splat(0);
}

export function test_v128_replace_lane_cost(): void {
  f32x4.replace_lane(tmpv128, 0, 0);
}

export function test_v128_splat_replace_lane_cost(): void {
  const v = f32x4.splat(3);
  f32x4.replace_lane(v, 0, 0);
  f32x4.replace_lane(v, 1, 1);
  f32x4.replace_lane(v, 2, 2);
}

export function test_v128_load_f32arr_cost(): void {
  tmpInput[0] = 0;
  tmpInput[1] = 1;
  tmpInput[2] = 2;
  tmpInput[3] = 3;
  v128.load(tmpInput.dataStart);
}

export function test_v128_splat_replace_lane_cost_loop(): void {
  for (let i: u32 = 0; i < 100_000; i++) {
    // let v = f32x4.splat(3);
    // v = f32x4.replace_lane(v, 0, 0);
    // v = f32x4.replace_lane(v, 1, 1);
    // v = f32x4.replace_lane(v, 2, 2);
    // 差不太多和上面写法
    const v = f32x4.replace_lane(
      f32x4.replace_lane(f32x4.replace_lane(f32x4.splat(0), 1, 1), 2, 2),
      3,
      3,
    );
    // v = f32x4.splat(3);
    // f32x4.replace_lane(v, 0, 0);
    // f32x4.replace_lane(v, 1, 1);
    // f32x4.replace_lane(v, 2, 2);// 耗时正比
  }
}

export function test_v128_replace_lane_cost_loop(): void {
  for (let i: u32 = 0; i < 100_000; i++) {
    // 这种写法比下面的快一半, 但是比splat_replace_lane的慢5倍.
    tmpv128 = f32x4.replace_lane(
      f32x4.replace_lane(
        f32x4.replace_lane(f32x4.replace_lane(tmpv128, 0, 0), 1, 1),
        2,
        2,
      ),
      3,
      3,
    );
    // tmpv128 = f32x4.replace_lane(tmpv128, 0, 0);
    // tmpv128 = f32x4.replace_lane(tmpv128, 1, 1);
    // tmpv128 = f32x4.replace_lane(tmpv128, 2, 2);
    // tmpv128 = f32x4.replace_lane(tmpv128, 3, 0);
  }
}

export function test_v128_load_f32arr_cost_loop(): void {
  for (let i: u32 = 0; i < 100_000; i++) {
    tmpInput[0] = 0;
    tmpInput[1] = 1;
    tmpInput[2] = 2;
    tmpInput[3] = 3;
    v128.load(tmpInput.dataStart);
    // tmpInput[0] = 0;
    // tmpInput[1] = 1;
    // tmpInput[2] = 2;
    // tmpInput[3] = 3;
    // v128.load(tmpInput.dataStart); // 耗时正比
  }
}

export function test_v128_extract_lane_cost(): void {
  tmpInput2[0] = f32x4.extract_lane(tmpv128, 0);
  tmpInput2[1] = f32x4.extract_lane(tmpv128, 1);
  tmpInput2[2] = f32x4.extract_lane(tmpv128, 2);
  tmpInput2[3] = f32x4.extract_lane(tmpv128, 3);
}

export function test_v128_store_f32arr_cost(): void {
  v128.store(tmpInput.dataStart, tmpv128);
  tmpInput2[0] = tmpInput[0];
  tmpInput2[1] = tmpInput[1];
  tmpInput2[2] = tmpInput[2];
  tmpInput2[3] = tmpInput[3];
}

export function test_v128_extract_lane_cost_loop(): void {
  for (let i: u32 = 0; i < 100_000; i++) {
    tmpInput2[0] = f32x4.extract_lane(tmpv128, 0);
    tmpInput2[1] = f32x4.extract_lane(tmpv128, 1);
    tmpInput2[2] = f32x4.extract_lane(tmpv128, 2);
    tmpInput2[3] = f32x4.extract_lane(tmpv128, 3);
  }
}

export function test_v128_store_f32arr_cost_loop(): void {
  for (let i: u32 = 0; i < 100_000; i++) {
    v128.store(tmpInput.dataStart, tmpv128);
    tmpInput2[0] = tmpInput[0];
    tmpInput2[1] = tmpInput[1];
    tmpInput2[2] = tmpInput[2];
    tmpInput2[3] = tmpInput[3];
  }
}

export function test_f32_cache(): void {
  const a0 = tmpInput[0];
  const a1 = tmpInput[1];
  const a2 = tmpInput[2];
  const a3 = tmpInput[3];
}

// 0 1 2 3
// 4 5 6 7
// 8 9 10 11
// 12 13 14 15
