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
  fs.readFileSync(__dirname + '/../build/simd.wasm'),
  imports,
);
const wasmExport = wasmModule.exports;

const i32Arr = wasmExport.__getInt32ArrayView.bind(wasmExport);
const f32Arr = wasmExport.__getFloat32ArrayView.bind(wasmExport);
const u8Arr = wasmExport.__getUint8ArrayView.bind(wasmExport);

test('add benchmark', () => {
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

  expect(i32Arr(wasmExport.SIMD_ADD(1, 2, 3, 4, 4, 3, 2, 1))).toBe(
    JS_ADD(1, 2, 3, 4, 4, 3, 2, 1),
  );

  benchmark(
    {
      JS() {
        JS_ADD(1, 2, 3, 4, 4, 3, 2, 1);
        JS_CALC(1, 2, 3, 4, 4, 3, 2, 1);
      },
      WASM() {
        wasmExport.SIMD_ADD(1, 2, 3, 4, 4, 3, 2, 1);
        wasmExport.SIMD_CALC(1, 2, 3, 4, 4, 3, 2, 1);
      },
    },
    1000000,
  );
});

test('v128 load output', () => {
  expect(u8Arr(wasmExport.test_v128_load())).toBe([
    16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
  ]);
  // prettier-ignore
  expect(f32Arr(wasmExport.test_v128_store())).toBe([
    0, 1, 1, 3,
    4, 5, 9, 7,
    8, 9, 17, 11,
    12, 13, 25, 15,
  ])
});

test('matrix multiply', () => {
  const mat4Left = new wasmExport.Mat4();
  const mat4Right = new wasmExport.Mat4();
  // 行主序输入, 列主序存储

  // prettier-ignore
  mat4Left.set(
    1, 0, 0, 0, 
    0, 1, 0, 0, 
    0, 0, 1, 0, 
    0, 0, 0, 1);
  // prettier-ignore
  mat4Right.set(
    2, 1, 0, 0, 
    0, 2, 0, 0, 
    0, 0, 1, 0, 
    0, 0, 0, 1);
  mat4Left.multiply(mat4Right);

  // prettier-ignore
  expect(f32Arr(mat4Left.elements)).toBe([
    2, 0, 0, 0, 
    1, 2, 0, 0, 
    0, 0, 1, 0, 
    0, 0, 0, 1,
  ]);

  // prettier-ignore
  mat4Left.set(
    1, 1, 1, 1,
    0, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0);
  // prettier-ignore
  mat4Right.set(
    2, 0, 0, 0,
    2, 0, 0, 0,
    2, 0, 0, 0,
    2, 0, 0, 0);
  mat4Left.multiplyMatrices(mat4Left, mat4Right);

  // prettier-ignore
  expect(f32Arr(mat4Left.elements)).toBe([
    8, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0,
  ]);
});

test('matrix multiply benchmark', async () => {
  const intputLeft = new Float32Array([
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
  ]);
  const intputRight = new Float32Array([...intputLeft].reverse());
  const intputLeftPtr = wasmExport.__newArray(
    wasmExport.Float32Array_ID.value,
    intputLeft,
  );
  const intputRightPtr = wasmExport.__newArray(
    wasmExport.Float32Array_ID.value,
    intputRight,
  );

  const { Mat } = await ftbMatrix({ simd: true });
  const m4LeftJs = new Matrix4();
  const m4RightJs = new Matrix4();
  const m4LeftWasm = new wasmExport.Mat4();
  const m4RightWasm = new wasmExport.Mat4();
  const m4LeftFtbWasm = new Mat();
  const m4RightFtbWasm = new Mat();

  const benchCfg = {
    JS(i) {
      // m4LeftJs.set(...intputLeft);
      // m4RightJs.set(...intputRight);
      m4LeftJs.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightJs.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // m4LeftJs.fromArray(intputLeft);
      // m4RightJs.fromArray(intputLeft);

      // const a = i || (Math.random() * 10) | 0;
      // m4LeftJs.set(1 + a, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // m4RightJs.set(1, 2 + a, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftJs.multiplyMatrices(m4LeftJs, m4RightJs);
    },
    WASM(i) {
      // m4LeftWasm.set(...intputLeft);
      // m4RightWasm.set(...intputRight);
      m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // m4LeftWasm.fromArray(intputLeftPtr);
      // m4RightWasm.fromArray(intputLeftPtr);

      // const a = i || (Math.random() * 10) | 0;
      // m4LeftWasm.set(1 + a, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // // prettier-ignore
      // m4RightWasm.set(1 , 2 + a, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftWasm.multiplyMatrices(m4LeftWasm, m4RightWasm);
    },
    WASM_SIMD(i) {
      // m4LeftWasm.set(...intputLeft);
      // m4RightWasm.set(...intputRight);
      m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // const a = i || (Math.random() * 10) | 0;
      // m4LeftWasm.set(1 + a, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // // prettier-ignore
      // m4RightWasm.set(1 , 2 + a, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);

      m4LeftWasm.multiplyMatricesSIMD(m4LeftWasm, m4RightWasm);
    },
    WASM_SIMD_LOOP(i) {
      // m4LeftWasm.set(...intputLeft);
      // m4RightWasm.set(...intputRight);
      m4LeftWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // const a = i || (Math.random() * 10) | 0;
      // m4LeftWasm.set(1 + a, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // // prettier-ignore
      // m4RightWasm.set(1 , 2 + a, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);

      m4LeftWasm.multiplyMatricesSIMDWithLoop(m4LeftWasm, m4RightWasm);
    },
    FTB_WASM_SIMD(i) {
      // m4LeftFtbWasm.set(...intputLeft);
      // m4RightFtbWasm.set(...intputRight);
      m4LeftFtbWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4RightFtbWasm.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // const a = i || (Math.random() * 10) | 0;
      // // prettier-ignore
      // m4LeftFtbWasm.set(1 + a, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      // // prettier-ignore
      // m4RightFtbWasm.set(1 , 2 + a, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
      m4LeftFtbWasm.multiplyMatrices(m4LeftFtbWasm, m4RightFtbWasm);
    },
  };

  benchCfg.JS(1);
  benchCfg.WASM(1);
  expect(f32Arr(m4LeftWasm.elements)).toBe(m4LeftJs.elements);
  benchCfg.WASM_SIMD(1);
  expect(f32Arr(m4LeftWasm.elements)).toBe(m4LeftJs.elements);
  benchCfg.WASM_SIMD_LOOP(1);
  expect(f32Arr(m4LeftWasm.elements)).toBe(m4LeftJs.elements);
  benchCfg.FTB_WASM_SIMD(1);
  expect(f32Arr(m4LeftWasm.elements)).toBe(m4LeftJs.elements);

  // benchmark(benchCfg, 1);
  // benchmark(benchCfg, 100);
  // benchmark(benchCfg, 1000);
  // benchmark(benchCfg, 5000);
  // benchmark(benchCfg, 27_000);
  benchmark(benchCfg, 100_000);

  benchmark(
    {
      LOOP_IN_WASM() {
        // m4LeftWasm.test_loop_in_wasm(m4RightWasm, 1000);
        // m4LeftWasm.test_loop_in_wasm(m4RightWasm, 27_000);
        m4LeftWasm.test_loop_in_wasm(m4RightWasm, 100_000);
      },
    },
    1,
  );
});

test('v128 load store benchmark', () => {
  const cfg = {
    load() {
      wasmExport.test_v128_load_cost();
    },
    store() {
      wasmExport.test_v128_store_cost();
    },
    splat() {
      wasmExport.test_v128_splat_cost();
    },
    replace_lane() {
      wasmExport.test_v128_replace_lane_cost();
    },
    splat_replace_lane() {
      wasmExport.test_v128_splat_replace_lane_cost();
    },
    load_f32arr() {
      wasmExport.test_v128_load_f32arr_cost();
    },
    extract_lane() {
      wasmExport.test_v128_extract_lane_cost();
    },
    store_f32arr() {
      wasmExport.test_v128_store_f32arr_cost();
    },
    f32_cache() {
      wasmExport.test_f32_cache();
    },
  };
  benchmark(cfg, 100_000);

  benchmark(
    {
      splat_replace_lane_loop_100000() {
        wasmExport.test_v128_splat_replace_lane_cost_loop();
      },
      load_f32arr_loop_100000() {
        wasmExport.test_v128_load_f32arr_cost_loop();
      },
      extract_lane_loop_100000() {
        wasmExport.test_v128_extract_lane_cost_loop();
      },
      store_f32arr_loop_100000() {
        wasmExport.test_v128_store_f32arr_cost_loop();
      },
    },
    1,
  );
});
