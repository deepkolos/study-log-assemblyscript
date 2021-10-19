// 使用方式还得看测试用例
// https://github.com/AssemblyScript/assemblyscript/blob/main/tests/compiler/features/simd.ts

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
  return []
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
  ): Mat4 {
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

  multiplyMatricesSIMD(a: Mat4, b: Mat4): Mat4 {
    const ae = a.elements;
    const be = b.elements;
    const te = this.elements;

    let vLeft = f32x4.splat(0);
    let vRight = f32x4.splat(0);

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

    // vLeft = f32x4.replace_lane(vLeft, 0, l1);
    // vLeft = f32x4.replace_lane(vLeft, 1, l2);
    // vLeft = f32x4.replace_lane(vLeft, 2, l3);
    // vLeft = f32x4.replace_lane(vLeft, 3, l4);

    // vRight = f32x4.replace_lane(vRight, 0, r1);
    // vRight = f32x4.replace_lane(vRight, 1, r2);
    // vRight = f32x4.replace_lane(vRight, 2, r3);
    // vRight = f32x4.replace_lane(vRight, 3, r4);

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
}
