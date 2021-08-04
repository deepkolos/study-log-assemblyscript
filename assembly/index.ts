// The entry file of your WebAssembly module.

export function add(a: i32, b: i32): i32 {
  return a + b;
}

// -1 << 2 输出 -4
// -1 << -2 输出 -4 不对 (-2 & 7) === 6 输出-64
export function bitShiftI8(a: i8, b: u8): i8 {
  return a << b;
}

export function bitShiftI8_(a: i8, b: u8): i8 {
  return a << (b & 7);
}

export function bitShiftI8Right(a: i8, b: u8): i8 {
  return a >> b;
}

export function bitShiftI8Right_(a: i8, b: u8): i8 {
  return a >>> b;
}

export function macroType(a: i8, b: u8): native<i8> {
  return <native<i8>>a;
}

// 没有 <<< 运算
// export function bitShiftI8Left_(a: i8, b: u8): i8 {
//   return a <<< b;
// }

export namespace foo {
  export class Bar {
    a: i32 = 1;
    getA(): i32 {
      return this.a;
    }
  }
}

// 使用方法
// https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Global
export const gFoo = 1
export var gBar = 2

export function updateGBar(): void {
  gBar++;
}