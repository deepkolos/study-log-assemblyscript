const assert = require('assert');
const myModule = require('..');

assert.strictEqual(myModule.add(1, 2), 3);
assert.strictEqual(myModule.bitShiftI8(-1, 2), -4);
assert.strictEqual(myModule.bitShiftI8(-1, -2), -64);
assert.strictEqual(myModule.bitShiftI8_(-1, -2), -64);
assert.strictEqual(myModule.bitShiftI8Right(-5, 1), -3);
assert.strictEqual(myModule.bitShiftI8Right_(-5, 1), -3);

const bar = myModule.foo.Bar();
assert.strictEqual(bar.a, 1);
assert.strictEqual(bar.getA(), 1);

// global 不是这样使用需要js new WebAssembly.Global 然后实例化wasm时候传递进去
// assert.strictEqual(myModule.gFoo, 1);
// assert.strictEqual(myModule.gBar, 2);
// myModule.updateGBar()
// assert.strictEqual(myModule.gBar, 3);

console.log('ok');
