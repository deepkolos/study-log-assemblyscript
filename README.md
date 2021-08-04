# AssemblyScript 学习日志

## 2021-8-3

0. Getting Start
1. Basic concepts
2. Implementation status
3. Using the compiler

### 与 TS 不同点

0. `===`是判断两个完全相同的`object`: `'h'+'ello' === 'hello'` 输出`fasle`
1. null 检查：不支持`if (foo.something)` 需要存储到本地变量后判断 `let something = foo.something`, 然后再判断
2. 非线性编译：从入口开始找依赖编译支持 treeshaking
3. 没有`undefined`值 和 `any`类型
4. 没有作用域，闭包
5. 不支持 promise,没有事件循环

罗列支持的特性，那些支持，那些不支持

### 编译配置

```
--optimize, -O        Optimizes the module. Typical shorthands are:

                       Default optimizations   -O
                       Make a release build    -O --noAssert
                       Make a debug build      --debug
                       Optimize for speed      -Ospeed
                       Optimize for size       -Osize

--optimizeLevel       How much to focus on optimizing code. [0-3]
--shrinkLevel         How much to focus on shrinking code size. [0-2, s=1, z=2]
--converge            Re-optimizes until no further improvements can be made.
--noAssert            Replaces assertions with just their value without trapping.
```

### 编译产出

应该是可以产出 asm.js，比较全

```
--outFile, -o         Specifies the output file. File extension indicates format.
--binaryFile, -b      Specifies the binary output file (.wasm).
--textFile, -t        Specifies the text output file (.wat).

--jsFile, -j          Specifies the JavaScript output file (.js).
--idlFile, -i         Specifies the WebIDL output file (.webidl).
--tsdFile, -d         Specifies the TypeScript definition output file (.d.ts).
```

> the kitchen sink: everything but the kitchen sink(无所不包，一应俱全)

https://www.assemblyscript.org/portability.html#portable-stdlib

### 想法

1. 无论是 js 代码还是 wasm，一个网页如何吃满 CPU（20 线程占用率均 100%）

## 2021-8-4

0. WebAssembly types
1. Exports and imports (看不太懂
2. Using the loader

### 类型

0. portable 需要使用 i32(variable) 方式做类型转换
1. 类型自动推断先假设 i32, f32, 当值不够就变成 i64, f64（不知道是编译时还是运行时的操作？
2. isize usize 是根据运行环境确定？ WASM32 对应 i32,u32 WASM64 对应 i64,u64
3. bit shift：返回的数据类似是左值的，i8 / u8 时 x << y ≡ x << (y & 7)，左值符号保留（不太理解什么时候执行算术位移，什么时候执行逻辑位移？

> 算术位移，逻辑位移\
> https://www.cnblogs.com/PrimerPlus/p/13214011.html

### Exports and imports

本身 wasm 示例化时候需要传入一些数据，所以这个 import 模块返回示例之前就需要传递一些东西，对封装有点影响

import 外部方法通过 declare 实现，通过 external 修改名字

```ts
@external("doSomethingElse")
export declare function doSomething(foo: i32): void
```

> 先找点例子去理解吧，额，貌似 wasm 比 asm 速度还慢，在 Mandelbrot 的 demo 里。。。\
> 但是体积确实比 js 小很多，毕竟不是字符串编码，不知道有没有 js 的二进制格式的编码，来解决体积问题，类似 gltf 和 glb 的关系

### Using the loader

可以看到 js 到 wasm 的数据是需要做转换的

```js
const { concat } = myModule.exports
const { __newString, __getString } = myModule.exports;

function doConcat(aStr, bStr) {
  let aPtr = __newString(aStr);
  let bPtr = __newString(bStr);
  let cPtr = concat(aPtr, bPtr);
  let cStr = __getString(cPtr);
  return cStr;
}
```
