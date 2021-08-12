const fs = require('fs');
const assert = require('assert');
const loader = require('@assemblyscript/loader');
const { toBase64 } = require('./toBase64.js');
const AsBind = require('as-bind/dist/as-bind.cjs');

const wasmModule = AsBind.instantiateSync(
  fs.readFileSync(__dirname + './../build/base64.wasm'),
  {
    base64: {
      consoleLog: i => console.log(i),
    },
  },
);

const myModule = wasmModule.exports;
// const imgData = fs.readFileSync(__dirname + '/deepkolos.jpg');
const imgData = fs.readFileSync(__dirname + '/4屏.jpg');
// const imgData = new Uint8Array([1, 2, 3, 4, 5, 6]);

// console.log(imgData.buffer);

const wasmOut = myModule.base64ArrayBuffer(imgData);
const jsOut = toBase64(imgData.buffer);
assert.equal(jsOut !== '', true);
assert.equal(wasmOut !== '', true);
assert.equal(wasmOut, jsOut);

// console.log('ok: wasm encode arraybuffer to base64');

{
  const t = Date.now();
  for (let index = 0; index < 1; index++) {
    const output = myModule.base64ArrayBuffer(imgData);
    // const bfPtr = myModule.__newArrayBuffer(imgData);
    // const output = myModule.base64ArrayBuffer(bfPtr);
    // console.log(myModule.__getString(output), output)
  }
  console.log('wasm encode cost', Date.now() - t);
  // 使用stringsink 之后还是js快一些 4屏.jpg wasm 58 js 18
  // 奇怪了难道瓶颈不在字符串拼接了？
  // 都不对，是js的arraybuffer传到wasm已经需要56ms了。。。直接return都不需要这样大的耗时。。。
  // 大数据还是得js直接传递到memory会更好一写
  // 通过js直接写入memory，wasm 耗时成功反超js了，极大的反超 wasm: 2ms js: 21ms
  // 额不太对的样子。。。输出结果首先就是不对的。。。上面的测试毫无意义。。。Uin8Array都没传递过去。。。

  // 这次数据正确了,使用as-bind吧，这些传参的数据格式转换
  // 图片  wasm  js
  // 4屏   57    328
  // dk    2     10
  // 效果确实可以了
}

{
  const t = Date.now();
  for (let index = 0; index < 1; index++) {
    toBase64(imgData.buffer);
  }
  console.log('js encode cost', Date.now() - t); // 13
}
