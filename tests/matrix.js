const fs = require('fs');
const loader = require('@assemblyscript/loader');
const { test, expect, benchmark } = require('./libs/test.js');
const { Matrix4 } = require('./libs/Matrix4.js');
const ftbMatrix = require('ftb-matrix/dist/ftb-matrix');

const imports = {
  env: {
    memory: new WebAssembly.Memory({ initial: 1024 }),
  },
};
const wasmModule = loader.instantiateSync(
  fs.readFileSync(__dirname + '/../build/matrix.wasm'),
  imports,
);
const wasmExport = wasmModule.exports;

const i32Arr = wasmExport.__getInt32ArrayView.bind(wasmExport);
const f32Arr = wasmExport.__getFloat32ArrayView.bind(wasmExport);
const u8Arr = wasmExport.__getUint8ArrayView.bind(wasmExport);

test('Matrix4_determinant', async () => {
  const m4LeftJs = new Matrix4();
  const m4LeftWasm = new wasmExport.Matrix4();

  const m4LeftWasmElements = f32Arr(m4LeftWasm.elements);
  expect(m4LeftJs.determinant()).toBe(1);
  expect(m4LeftWasm.determinant()).toBe(1);

  m4LeftJs.elements[0] = 2;
  m4LeftWasmElements[0] = 2;
  expect(m4LeftJs.determinant()).toBe(2);
  expect(m4LeftWasm.determinant()).toBe(2);

  m4LeftJs.elements[0] = 0;
  m4LeftWasmElements[0] = 0;
  expect(m4LeftJs.determinant()).toBe(0);
  expect(m4LeftWasm.determinant()).toBe(0);

  m4LeftJs.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
  m4LeftWasm.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
  expect(m4LeftJs.determinant()).toBe(76);
  expect(m4LeftWasm.determinant()).toBe(76);

  // prettier-ignore
  const benchCfg = {
    JS() {
      m4LeftJs.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
      m4LeftJs.determinant()
    },
    WASM() {
      m4LeftWasm.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
      m4LeftWasm.determinant_no_simd();
    },
    WASM_SIMD() {
      m4LeftWasm.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
      m4LeftWasm.determinant();
    },
  };

  // benchmark(benchCfg, 1);
  // benchmark(benchCfg, 100);
  // benchmark(benchCfg, 1000);
  benchmark(benchCfg, 5000);
  // benchmark(benchCfg, 27_000);
  // benchmark(benchCfg, 100_000);
});

test('Matrix4_invert', async () => {
  const m4LeftJs = new Matrix4();
  const m4LeftWasm = new wasmExport.Matrix4();

  const benchCfg = {
    JS() {
      m4LeftJs.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftJs.invert();
    },
    WASM() {
      m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftWasm.invert_no_simd();
    },
    WASM_SIMD() {
      m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftWasm.invert();
    },
  };

  // benchmark(benchCfg, 1);
  // benchmark(benchCfg, 100);
  // benchmark(benchCfg, 1000);
  benchmark(benchCfg, 5000);
  // benchmark(benchCfg, 27_000);
  // benchmark(benchCfg, 100_000);
});
