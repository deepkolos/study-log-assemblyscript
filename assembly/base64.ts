import { StringSink } from 'as-string-sink';

// prettier-ignore
// const encodings: Array<string> = [
// const encodings: StaticArray<string> = [
//   'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
//   'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
//   'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a',
//   'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
//   'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
//   't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1',
//   '2', '3', '4', '5', '6', '7', '8', '9', '+',
//   '/',
// ];
// prettier-ignore
const encodingsCodePoint: StaticArray<i32> = [
  65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 
  76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
  87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 
  103, 104, 105, 106, 107, 108, 109, 110, 111, 
  112, 113, 114, 115, 116, 117, 118, 119, 120, 
  121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 
  57, 43, 47
];

// const encodingCodeMap: u8[] = encodings.map<u8>(
//   (i: string) => <u8>i.charCodeAt(0),
// );
// const encodingsCodePoint: u8[] = encodings.map<u8>(
//   (i: string) => <u8>i.codePointAt(0),
// );
const tailCodePoint: i32 = 61 // '='.codePointAt(0);
var a: u32, b: u32, c: u32, d: u32;
var e: u32 = 0;
var chunk: u32;

export function base64ArrayBuffer(bytes: Uint8Array): string {
  const stringSink = new StringSink();
  // var base64 = '';

  // const bytes = Uint8Array.wrap(buffer);
  var byteLength = bytes.byteLength;
  var byteRemainder = byteLength % 3;
  var mainLength = byteLength - byteRemainder;

  // var arr = new Array<string>((mainLength / 3 + 1) * 4);
  // const t0 = Date.now();
  // Main loop deals with bytes in chunks of 3
  for (var i = 0; i < mainLength; i = i + 3) {
    // Combine the three bytes into a single integer
    chunk =
      ((<u32>unchecked(bytes[i])) << 16) |
      ((<u32>unchecked(bytes[i + 1])) << 8) |
      (<u32>unchecked(bytes[i + 2]));

    // Use bitmasks to extract 6-bit segments from the triplet
    a = (chunk & 16515072) >> 18; // 16515072 = (2^6 - 1) << 18
    b = (chunk & 258048) >> 12; // 258048   = (2^6 - 1) << 12
    c = (chunk & 4032) >> 6; // 4032     = (2^6 - 1) << 6
    d = chunk & 63; // 63       = 2^6 - 1

    // Convert the raw binary segments to the appropriate ASCII encoding
    // base64 += encodings[a] + encodings[b] + encodings[c] + encodings[d];

    // arr[i] = encodings[a];
    // arr[i + 1] = encodings[b];
    // arr[i + 2] = encodings[c];
    // arr[i + 3] = encodings[d];

    // TODO: use writeCodePoint
    // encodings[a].codePointAt(0);

    // stringSink.write(
    //   unchecked(encodings[a]) +
    //     unchecked(encodings[b]) +
    //     unchecked(encodings[c]) +
    //     unchecked(encodings[d]),
    // );
    stringSink.writeCodePoint(encodingsCodePoint[a]);
    stringSink.writeCodePoint(encodingsCodePoint[b]);
    stringSink.writeCodePoint(encodingsCodePoint[c]);
    stringSink.writeCodePoint(encodingsCodePoint[d]);

    e += 4;
  }

  // consoleLog(mainLength.toString());
  // consoleLog(e.toString());
  // const t1 = Date.now();
  // Deal with the remaining bytes and padding
  if (byteRemainder == 1) {
    chunk = unchecked(<u32>bytes[mainLength]);

    a = (chunk & 252) >> 2; // 252 = (2^6 - 1) << 2

    // Set the 4 least significant bits to zero
    b = (chunk & 3) << 4; // 3   = 2^2 - 1

    // base64 += encodings[a] + encodings[b] + '==';

    // arr[e] = encodings[a];
    // arr[e + 1] = encodings[b];
    // arr[e + 2] = '=';
    // arr[e + 3] = '=';

    // stringSink.write(unchecked(encodings[a]) + unchecked(encodings[b]) + '==');

    stringSink.writeCodePoint(encodingsCodePoint[a]);
    stringSink.writeCodePoint(encodingsCodePoint[b]);
    stringSink.writeCodePoint(tailCodePoint);
    stringSink.writeCodePoint(tailCodePoint);
  } else if (byteRemainder == 2) {
    chunk =
      (unchecked(<u32>bytes[mainLength]) << 8) | unchecked(<u32>bytes[mainLength + 1]);

    a = (chunk & 64512) >> 10; // 64512 = (2^6 - 1) << 10
    b = (chunk & 1008) >> 4; // 1008  = (2^6 - 1) << 4

    // Set the 2 least significant bits to zero
    c = (chunk & 15) << 2; // 15    = 2^4 - 1

    // arr[e] = encodings[a];
    // arr[e + 1] = encodings[b];
    // arr[e + 2] = encodings[c];
    // arr[e + 3] = '=';

    // base64 += encodings[a] + encodings[b] + encodings[c] + '=';

    // stringSink.write(
    //   unchecked(encodings[a]) +
    //     unchecked(encodings[b]) +
    //     unchecked(encodings[c]) +
    //     '=',
    // );

    stringSink.writeCodePoint(encodingsCodePoint[a]);
    stringSink.writeCodePoint(encodingsCodePoint[b]);
    stringSink.writeCodePoint(encodingsCodePoint[c]);
    stringSink.writeCodePoint(tailCodePoint);
  }

  // const t2 = Date.now();

  // return arr.join('');
  return stringSink.toString();
  // const str: string = stringSink.toString();
  // consoleLog(str.length.toString())
  // const t3 = Date.now();
  // consoleLog((t1 - t0).toString());
  // consoleLog((t2 - t1).toString());
  // consoleLog((t3 - t2).toString());
  // consoleLog((t3 - t0).toString());
  // return str;
}
