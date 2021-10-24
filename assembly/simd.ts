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

    //#region simd start 最初版
    tmpInput[0] = be[0];
    tmpInput[1] = be[4];
    tmpInput[2] = be[8];
    tmpInput[3] = be[12];
    const r0 = v128.load(tmpInput.dataStart);
    tmpInput[0] = be[1];
    tmpInput[1] = be[5];
    tmpInput[2] = be[9];
    tmpInput[3] = be[13];
    const r1 = v128.load(tmpInput.dataStart);
    tmpInput[0] = be[2];
    tmpInput[1] = be[6];
    tmpInput[2] = be[10];
    tmpInput[3] = be[14];
    const r2 = v128.load(tmpInput.dataStart);
    tmpInput[0] = be[3];
    tmpInput[1] = be[7];
    tmpInput[2] = be[11];
    tmpInput[3] = be[15];
    const r3 = v128.load(tmpInput.dataStart);

    let l = f32x4.splat(ae[0]);
    let o = f32x4.mul(l, r0);
    l = f32x4.splat(ae[4]);
    o = f32x4.add(o, f32x4.mul(l, r1));
    l = f32x4.splat(ae[8]);
    o = f32x4.add(o, f32x4.mul(l, r2));
    l = f32x4.splat(ae[12]);
    o = f32x4.add(o, f32x4.mul(l, r3));
    v128.store(tmpInput.dataStart, o);
    te[0] = tmpInput[0];
    te[4] = tmpInput[1];
    te[8] = tmpInput[2];
    te[12] = tmpInput[3];
    //#endregion

    //#region
    l = f32x4.splat(ae[1]);
    o = f32x4.mul(l, r0);
    l = f32x4.splat(ae[5]);
    o = f32x4.add(o, f32x4.mul(l, r1));
    l = f32x4.splat(ae[9]);
    o = f32x4.add(o, f32x4.mul(l, r2));
    l = f32x4.splat(ae[13]);
    o = f32x4.add(o, f32x4.mul(l, r3));
    v128.store(tmpInput.dataStart, o);
    te[1] = tmpInput[0];
    te[5] = tmpInput[1];
    te[9] = tmpInput[2];
    te[13] = tmpInput[3];
    //#endregion

    //#region
    l = f32x4.splat(ae[2]);
    o = f32x4.mul(l, r0);
    l = f32x4.splat(ae[6]);
    o = f32x4.add(o, f32x4.mul(l, r1));
    l = f32x4.splat(ae[10]);
    o = f32x4.add(o, f32x4.mul(l, r2));
    l = f32x4.splat(ae[14]);
    o = f32x4.add(o, f32x4.mul(l, r3));
    v128.store(tmpInput.dataStart, o);
    te[2] = tmpInput[0];
    te[6] = tmpInput[1];
    te[10] = tmpInput[2];
    te[14] = tmpInput[3];
    //#endregion

    //#region
    l = f32x4.splat(ae[3]);
    o = f32x4.mul(l, r0);
    l = f32x4.splat(ae[7]);
    o = f32x4.add(o, f32x4.mul(l, r1));
    l = f32x4.splat(ae[11]);
    o = f32x4.add(o, f32x4.mul(l, r2));
    l = f32x4.splat(ae[15]);
    o = f32x4.add(o, f32x4.mul(l, r3));
    v128.store(tmpInput.dataStart, o);
    te[3] = tmpInput[0];
    te[7] = tmpInput[1];
    te[11] = tmpInput[2];
    te[15] = tmpInput[3];
    //#endregion
    // return this;
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
