const fs = require('fs');
const loader = require('@assemblyscript/loader');
const { test, expect, benchmark } = require('./libs/test.js');
const { Matrix4 } = require('./libs/Matrix4.js');
const { memoryUsage } = require('process');

const imports = {
  env: {
    memory: new WebAssembly.Memory({ initial: 65535 }),
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

const sleep = t => new Promise(r => setTimeout(r, t));

test('Matrix4_multiply', async () => {
  const m4LeftJs = new Matrix4();
  const m4RightJs = new Matrix4();
  const m4LeftWasm = new wasmExport.Matrix4();
  const m4RightWasm = new wasmExport.Matrix4();

  const benchCfg = {
    JS(i) {
      m4LeftJs.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightJs.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftJs.multiplyMatrices(m4LeftJs, m4RightJs);
    },
    WASM(i) {
      m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftWasm.multiplyMatrices_no_simd(m4LeftWasm, m4RightWasm);
    },
    WASM_SIMD(i) {
      m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftWasm.multiplyMatrices(m4LeftWasm, m4RightWasm);
    },
    WASM_SIMD_LOAD_F32() {
      m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftWasm.multiplyMatrices_load_f32(m4LeftWasm, m4RightWasm);
    },
  };

  benchCfg.JS();
  benchCfg.WASM();
  expect(f32Arr(m4LeftWasm.elements)).toBe(m4LeftJs.elements);
  benchCfg.WASM_SIMD();
  expect(f32Arr(m4LeftWasm.elements)).toBe(m4LeftJs.elements);

  // benchmark(benchCfg, 1);
  // benchmark(benchCfg, 100);
  // benchmark(benchCfg, 1000);
  // benchmark(benchCfg, 5000);
  // benchmark(benchCfg, 20000);
  // benchmark(benchCfg, 27_000);
  benchmark(benchCfg, 100_000);

  // for (let i = 0; i < 5; i++) {
  //   await sleep(500);
  //   benchmark(benchCfg, 10_000 / 5);
  // }
});

test('Matrix4_determinant', async () => {
  const m4LeftJs = new Matrix4();
  const m4LeftWasm = new wasmExport.Matrix4();

  const m4LeftWasmElements = f32Arr(m4LeftWasm.elements);
  expect(m4LeftJs.determinant()).toBe(1);
  expect(m4LeftWasm.determinant()).toBe(1);
  expect(m4LeftWasm.determinant_opt()).toBe(1);

  m4LeftJs.elements[0] = 2;
  m4LeftWasmElements[0] = 2;
  expect(m4LeftJs.determinant()).toBe(2);
  expect(m4LeftWasm.determinant()).toBe(2);
  expect(m4LeftWasm.determinant_opt()).toBe(2);

  m4LeftJs.elements[0] = 0;
  m4LeftWasmElements[0] = 0;
  expect(m4LeftJs.determinant()).toBe(0);
  expect(m4LeftWasm.determinant()).toBe(0);
  expect(m4LeftWasm.determinant_opt()).toBe(0);

  m4LeftJs.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
  m4LeftWasm.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
  expect(m4LeftJs.determinant()).toBe(76);
  expect(m4LeftWasm.determinant()).toBe(76);
  expect(m4LeftWasm.determinant_opt()).toBe(76);

  m4LeftJs.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
  m4LeftWasm.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);
  m4LeftWasm.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12);

  // prettier-ignore
  const benchCfg = {
    JS() {
      m4LeftJs.determinant()
    },
    WASM() {
      m4LeftWasm.determinant_no_simd();
    },
    WASM_OPT() {
      m4LeftWasm.determinant_opt();
    },
    WASM_SIMD() {
      m4LeftWasm.determinant();
    },
  };

  // benchmark(benchCfg, 1);
  // benchmark(benchCfg, 100);
  // benchmark(benchCfg, 1000);
  // benchmark(benchCfg, 5000);
  // benchmark(benchCfg, 27_000);
  benchmark(benchCfg, 100_000);
  // benchmark(benchCfg, 200_000);
});

test('Matrix4_invert', async () => {
  const m4LeftJs = new Matrix4();
  const m4LeftWasm = new wasmExport.Matrix4();
  const m4RightWasm = new wasmExport.Matrix4();

  m4LeftJs.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
  m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
  m4RightWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);

  const benchCfg = {
    JS() {
      m4LeftJs.invert();
    },
    WASM() {
      m4LeftWasm.invert_no_simd();
    },
    WASM_SIMD() {
      m4LeftWasm.invert();
    },
    WASM_NO_LOCAL_VAR_CACHE() {
      m4LeftWasm.invert_no_teN_cache();
    },
  };

  m4LeftJs.invert();
  m4LeftWasm.invert();
  m4RightWasm.invert();
  expect(f32Arr(m4LeftWasm.elements)).toBe(m4LeftJs.elements);
  expect(f32Arr(m4RightWasm.elements)).toBe(m4LeftJs.elements);

  // benchmark(benchCfg, 1);
  // benchmark(benchCfg, 100);
  // benchmark(benchCfg, 1000);
  // benchmark(benchCfg, 5000);
  // benchmark(benchCfg, 27_000);
  benchmark(benchCfg, 100_000);
  // benchmark(benchCfg, 1000_000);
});

// test('memory_log', () => {
//   const info = memoryUsage();
//   Object.keys(info).forEach(k => {
//     info[k] /= 1024;
//   });
//   console.log(info);
// });
