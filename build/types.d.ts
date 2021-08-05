type i8 = number;
type i16 = number;
type i32 = number;
type i64 = bigint;
type isize = number;
type u8 = number;
type u16 = number;
type u32 = number;
type u64 = bigint;
type usize = number;
type f32 = number;
type f64 = number;
type bool = boolean | number;
export function add(a: i32, b: i32): i32;
export function bitShiftI8(a: i8, b: u8): i8;
export function bitShiftI8_(a: i8, b: u8): i8;
export function bitShiftI8Right(a: i8, b: u8): i8;
export function bitShiftI8Right_(a: i8, b: u8): i8;
export function macroType(a: i8, b: u8): i32;
export namespace foo {
  export class Bar {
    static wrap(ptr: usize): Bar;
    valueOf(): usize;
    a: i32;
    getA(): i32;
    constructor();
  }
}
export var gFoo: i32;
export var gBar: i32;
export function updateGBar(): void;
export const memory: WebAssembly.Memory;
export const __setArgumentsLength: ((n: i32) => void) | undefined;
