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
const { concat } = myModule.exports;
const { __newString, __getString } = myModule.exports;

function doConcat(aStr, bStr) {
  let aPtr = __newString(aStr);
  let bPtr = __newString(bStr);
  let cPtr = concat(aPtr, bPtr);
  let cStr = __getString(cPtr);
  return cStr;
}
```

## 2021-8-5

0. Q&A
1. Memory （不太懂

静态方法是初始化实例用以及给 wasm export 输入类型读取转换的工具方法

类型关联, 构建命令增加`-d ./build/types.d.ts`

```ts
import type * as MyModule from "myModule"; // pointing at the generated d.ts

loader.instantiate<typeof MyModule>(
  fetch("myModule.wasm"),
  { ... }
).then(({ exports }) => {
  ...
})
```

### Q&A

使用 wasm 之前还得确定场景，所以还是得先确定原本 js 里那些运算是高消耗的运算

| Scenario                      | Recommendation                                         |
| ----------------------------- | ------------------------------------------------------ |
| Compute-heavy algorithm       | Use WebAssembly                                        |
| Mostly interacts with the DOM | Mostly use JavaScript                                  |
| Games                         | Use WebAssembly for CPU-intensive parts                |
| WebGL                         | Depends how much of it is calling APIs. Probably both. |
| Websites, Blogs, ...          | JavaScript is your friend                              |

#### WebAssembly is little endian

little endian 存储是低位在前，big endian 则是高位在前

Little-Endian stores most significant bytes from right to left.

Big-Endian stores most significant bytes from left to right.

| address | big-endian | little-endian |
| ------- | ---------- | ------------- |
| 0x0000  | 0x12       | 0xcd          |
| 0x0001  | 0x34       | 0xab          |
| 0x0002  | 0xab       | 0x34          |
| 0x0003  | 0xcd       | 0x12          |

> 为什么 game-of-life 需要把 RGB 转成 BGR 呢？

instantiate wasm 时候所 import 的数据都是 wasm 存储格式，非运行时的值，需要设置需要按照存储格式赋值，而非运行时赋值
（验证方式，assembly loader 把 number 变成 integer 时是否也需要做这个转换。。。但貌似没看到这个转换，只有字符串，数组的转换）

1. https://blog.csdn.net/waitingbb123/article/details/80504093
2. https://riptutorial.com/javascript/example/13317/little---big-endian-for-typed-arrays-when-using-bitwise-operators

canvas 绘制像素风格需要特殊设置：

```js
canvas.style.imageRendering = 'pixelated';
ctx.imageSmoothingEnabled = false;
```

### Memory

| Region          | Description                                                 |
| --------------- | ----------------------------------------------------------- |
| Reserved memory | As specified with --memoryBase                              |
| Static memory   | Starting right after reserved memory, ends at \_\_heap_base |
| Dynamic memory  | Starting right after static memory, starts at \_\_heap_base |

## 2021-8-6

0. Memory
1. Garbage Collection
2. Peculiarities(独特性)
3. Portability(可移植性)
4. Debugging

描述了一个初始化 wasm 时访问 memory 的问题：会默认把 top level 的语句隐式当作 start 函数

> Since the implicit start function executes immediately upon instantiation, this leads to a special case because control flow has not yet yielded back to the host, so the module's exported memory only becomes available externally after the implicit start function completes.

import 的 memory 和 export 的 memory 是同一份

export runtime 可以让 wasm 外部（js）创建 wasm 的数据，以及生命周期管理（标记和取消标记），触发 GC

### Runtime

```
--runtime             Specifies the runtime variant to include in the program.

                      incremental  TLSF + incremental GC (default) 对未稳定wasm的gc做了polyfill可自动GC
                      minimal      TLSF + lightweight GC invoked externally 手动GC
                      stub         Minimal runtime stub (never frees) 没GC
                      ...          Path to a custom runtime implementation
```

> TODO: 有空了解下[TLSF 内存管理算法](https://www.jianshu.com/p/01743e834432)
> go to lengths (to do something): put a lot of effort, energy or work to do achieve something

```ts
function compute() {
  exports.doSomeHeavyWorkProducingGarbage();
}
compute();
// throw away the entire module instance
// 执行完就扔掉instance ??, 每次执行重新创建么, 不过用mandelbrot测试，stub(227)比minimal(266)快
```

### Peculiarities(独特性)

装饰器, 也可以自定义装饰器

0. @inline 把函数 inline 到调用地方
1. @lazy 懒编译，用于避免不必要全局变量（是因为顶层声明的都是全局变量么
2. @global
3. @external 修改引入模块标识符，引入模块到本地标识符的映射
4. @operator
5. @operator.binary
6. @operator.prefix
7. @operator.postfix

运算符重载，只能用于类的方法

二元重载：[] []= {} {}= == != > >= < <= >> >>> << & | ^ + - \* / \*\* %
一元重载：! ~ + - ++ --

Tree Shaking

0. Module-level
1. Branch-level

编译器提供一些环境的常量，其中一个值得注意的是 SIMD 的支持，不过是编译时的 fallback，而非运行时检测的 fallback

```ts
const ASC_FEATURE_SIGN_EXTENSION: bool;
const ASC_FEATURE_MUTABLE_GLOBALS: bool;
const ASC_FEATURE_NONTRAPPING_F2I: bool;
const ASC_FEATURE_BULK_MEMORY: bool;
const ASC_FEATURE_SIMD: bool;
const ASC_FEATURE_THREADS: bool;
const ASC_FEATURE_EXCEPTION_HANDLING: bool;
const ASC_FEATURE_TAIL_CALLS: bool;
const ASC_FEATURE_REFERENCE_TYPES: bool;
const ASC_FEATURE_MULTI_VALUE: bool;
const ASC_FEATURE_GC: bool;
const ASC_FEATURE_MEMORY64: bool;

// Whether the respective feature is enabled.

// For example, if a library supports SIMD but also wants to provide a fallback when being compiled without SIMD support:

if (ASC_FEATURE_SIMD) {
  // compute with SIMD operations
} else {
  // fallback without SIMD operations
}
```

### Portability

通过 tsc 编译给 asc 编写的 ts 代码（work in progress 中，这个方式产出的 js 版本的性能对比更加合理

```js
require('assemblyscript/std/portable');
```

限制

0. 数字精度达不到 i64 u64
1. js 没有 memory，没有 load store 操作（asm 如何处理的呢？

## 2021-8-8

0. add wasm call js func test
1. webgl 40%

## 2021-8-11

0. webgl 70% add webgl wasm demo

## 2021-8-12

1. 发现 as 的 StringBuilder as-string-sink 之前测试的 base64 encode 耗时果然大大降低了！！
2. 测试 as-bind 发现不支持 namespace 里面的 declare function

### wasm 使用不当导致的额外耗时

0. 使用原生字符串拼接 × 使用 as-string-sink √
1. ArrayBuffer 作为参数 × 先\_\_newArrayBuffer 写到 memory，其返回的指针做参数 √ 4mb 的图片单数据传递就需要 56ms
2. 多用 unchecked(TBD) StaticArray @inline

说不定 js 版本的字符串拼接也是可以做类似的优化来达到提速

> https://mrale.ph/blog/2018/02/03/maybe-you-dont-need-rust-to-speed-up-your-js.html#getting-the-code \
> https://emscripten.org/docs/optimizing/Optimizing-WebGL.html

## 2021-8-13

0. 减少 base64 wasm 版体积(14kb -> 4kb) （minimal 的 runtime 大概需要 3k
1. webgl 使用 as-bind, 适配层变简单了，但是需要引入 28k 的 as-bind，性能倒没什么变化，相比于 ASWebGLue 的 65k 还是好一半

## 2021-8-16

0. 增加 performance 测试字符串和 Uint8Array 测试用例，发现格式转换十分耗时（感觉wasm并不适合高频数据交换的场景

## 2021-8-18

0. 想一下command buffer的实现，发现只有无返回值的api支持合并，但是api之间的执行顺序就会打乱也会出错

## 2021-8-19

0. 发现非常难从js传递复杂数据到wasm，gltf不太希望像three-d那样完全wasm内解析包括json的decode，先打算使用js调用wasm api来组装gltf

## 2021-8-23

0. 初步实现基础GLTF结构写入到as

## 2021-8-24

0. 编写js版的gltf-renderer 10%

## 2021-8-25

0. 编写js版的gltf-renderer 15%（新手机终于到了，用了3天的红米3s, 骑共享单车都得一两分钟解锁，健康码5分钟起，但是QQ极速版出奇的快

## 2021-8-26

1. 编写js版的gltf-renderer 20%

## 2021-8-27

1. 编写js版的gltf-renderer 21%

## 2021-8-31

1. 编写js版的gltf-renderer 25%