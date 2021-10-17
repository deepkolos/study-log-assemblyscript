const fs = require('fs');
const loader = require('@assemblyscript/loader');
const imports = {
  /* imports go here */
};
const wasmModule = loader.instantiateSync(
  fs.readFileSync(__dirname + '/../build/simd.wasm'),
  imports,
);
const wasmExport = wasmModule.exports;

function JS_ADD(l1, l2, l3, l4, r1, r2, r3, r4) {
  return [l1 + r1, l2 + r2, l3 + r3, l4 + r4];
}

function JS_CALC(l1, l2, l3, l4, r1, r2, r3, r4) {
  return [
    l1 - (l1 + r1) * r1,
    l2 - (l2 + r2) * r3,
    l3 - (l3 + r3) * r3,
    l4 - (l4 + r4) * r4,
  ];
}

console.log(
  wasmExport.__getInt32ArrayView(wasmExport.SIMD_ADD(1, 2, 3, 4, 1, 2, 3, 4)),
);

console.log(
  wasmExport.__getInt32ArrayView(wasmExport.SIMD_CALC(1, 2, 3, 4, 1, 2, 3, 4)),
);

const LOOP_COUNT = 1000000;
let wasmCost, jsCost;

{
  const t = performance.now();
  for (let i = 0; i < LOOP_COUNT; i++) {
    wasmExport.SIMD_ADD(1, 2, 3, 4, 4, 3, 2, 1);
    wasmExport.SIMD_CALC(1, 2, 3, 4, 4, 3, 2, 1);
  }
  wasmCost = performance.now() - t;
}

{
  const t = performance.now();
  for (let i = 0; i < LOOP_COUNT; i++) {
    JS_ADD(1, 2, 3, 4, 4, 3, 2, 1);
    JS_CALC(1, 2, 3, 4, 4, 3, 2, 1);
  }
  jsCost = performance.now() - t;
}

console.log(`wasmCost: ${wasmCost}`);
console.log(`jsCost: ${jsCost}`);
