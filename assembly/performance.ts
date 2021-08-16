declare function output(arg: i32): void;
declare function outputStr(str: string): void;
declare function outputTypedArray(arr: Uint8Array): void;

export function input(arg: i32): void {
  output(arg);
}

const STRING_INPUT = 'input string';
const STRING_RETURN = 'return string';

export function inputString(str: string): string {
  // outputStr(str); // no ouput
  // outputStr(str + ' edited'); // out of memory
  outputStr(STRING_INPUT); // ok

  return STRING_RETURN;
}

export function intputTypedArray(arr: Uint8Array): Uint8Array {
  const u8Array = new Uint8Array(3);
  u8Array[0] = arr[2];
  u8Array[1] = arr[1];
  u8Array[2] = arr[0];
  // outputTypedArray(arr); // no output
  outputTypedArray(u8Array);

  return u8Array;
  // return arr; // no output
}

export const Uint8Array_ID = idof<Uint8Array>();
