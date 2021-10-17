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

