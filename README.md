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

0. 增加 performance 测试字符串和 Uint8Array 测试用例，发现格式转换十分耗时（感觉 wasm 并不适合高频数据交换的场景

## 2021-8-18

0. 想一下 command buffer 的实现，发现只有无返回值的 api 支持合并，但是 api 之间的执行顺序就会打乱也会出错

## 2021-8-19

0. 发现非常难从 js 传递复杂数据到 wasm，gltf 不太希望像 three-d 那样完全 wasm 内解析包括 json 的 decode，先打算使用 js 调用 wasm api 来组装 gltf

## 2021-8-23

0. 初步实现基础 GLTF 结构写入到 as

## 2021-8-24

0. 编写 js 版的 gltf-renderer 10%

## 2021-8-25

0. 编写 js 版的 gltf-renderer 15%（新手机终于到了，用了 3 天的红米 3s, 骑共享单车都得一两分钟解锁，健康码 5 分钟起，但是 QQ 极速版出奇的快

## 2021-8-26

1. 编写 js 版的 gltf-renderer 20%

## 2021-8-27

1. 编写 js 版的 gltf-renderer 21%

## 2021-8-31

1. 编写 js 版的 gltf-renderer 25%

## 2021-9-1

1. 编写 js 版的 gltf-renderer 26% (感觉进度太慢了，还是得有所侧重去实现才行

## 2021-9-2

1. 编写 js 版的 gltf-renderer 30% 初步实现 gltf 展示，准备提炼笔记，进行抽象设计

## 2021-9-3

1. 编写 js 版的 gltf-renderer 35% 简单进行抽象设计，将会是 GLTF 直接和 webgl api 对接，会对 webgl 做一层简单的抽象，资源情况将会外挂存储

## 2021-9-5

1. 编写 js 版的 gltf-renderer 40% 初步设计了 GLProgram，但 buffer 和 texture 由外部维护，仅仅更新 attribute 和 uniform，TS 友好，设置的参数均可配置，有提示

## 2021-9-6

1. 编写 js 版的 gltf-renderer 45% TS 的类型真有趣，居然实现了`class A implements [number, number, number]`, 群里的大佬确实强, 学到了，又是奇怪的抽象实验

## 2021-9-7

1. 编写 js 版的 gltf-renderer 50% 跑起来了，不过纹理有问题，看来画个立方体就不简单

## 2021-9-8

1. 编写 js 版的 gltf-renderer 55% 修复了纹理的问题，需要上传纹理再生成 mipmap，后面先看看 three 的抽象吧，感觉最近都在瞎抽象

## 2021-9-9

0. 发现 glTF 的节点是带有 cameraID，就是说渲染某个节点可以使用特定相机，GLTF 一般不带相机
1. glTF 下标关联不适合节点增删，不过作为模型存储则方便复用，js 运行时有引用，但是字符串没有
2. node 还有 matrix/TRS, 有动画的话，只出现 TRS
3. three 的 WebGLProgram 是自己实现了一个 glsl 的模块复用能力, Programs 则实现了一层复用，看来是动态生成很多个 program, 然后把能复用给复用起来，program 是按照启用的特性来动态生成。
4. 先整理各个部件大概可锻炼的能力，然后针对性去边看，边实现。美好的探索型练习题。

TODO:

0. 相机控制（炼数学计算，封装
1. 场景树（炼数学计算
2. 材质（练 shader
3. GLTF 规范（学概念，适合探索
4. 动画（练状态管理？

## 2021-9-13

0. T _ R _ S，听到建模同学提到可以设置模型旋转中心，会是怎么实现呢？先 R 后 T 才能实现吧，和左乘右乘相关？
1. 拆分了一下 render 函数，增加坐标和子节点的渲染
2. 喵了几眼 PBR，貌似内容比较多，BRDF 也得回忆

## 2021-9-14

```
每个片元的光照反射和光源的光强的关系公式表示：
  “某点反射的颜色 = 牛逼的函数（光照颜色、法线方向、光照方向、固有色巴拉巴拉等等参数）”
也就是BRDF，英文名是 Bidirectional Reflectance Distribution Function，即双向反射分布函数。

BRDF 一般满足两个特性，交换律和能量守恒。
  交换律是说当摄像机位置和光源位置调换位置，这个函数计算的最终结果是相同的。
  能量守恒就是这个函数的计算结果不能超过光强。

关于光照计算是有很多种流派的，如果某光照计算违反了两者或其中之一，那么它们就不是 BRDF，就不是 PBR 材质。
PBR 这个词语语境一般就直接代表硬表面材质了，而不是基于物理这个概念，例如 3S 材质也是基于物理测量的，但是不叫 PBR 材质。

https://zhuanlan.zhihu.com/p/137013668
```

TODO: 直接看 PBR 还是太难了，还是先把 Blinn-Phong 理解并实现吧

## 2021-9-15

https://zhuanlan.zhihu.com/p/144331612

0. 镜面反射
1. 漫反射（Lambert 漫反射模型:入射角度越倾斜损失能量越大 距离光源越远强度也越弱）
2. 环境光

问题：

0. 光强是光能的密度么？光强，即光的能流密度

## 2021-9-16

0. Blinn-Phong 是对计算反射方向和观测方向夹角的计算优化
1. 着色方法：面着色，顶点着色，像素着色
2. Flat Shading：应该是在顶点着色器计算颜色
3. Gouraud Shading：依然是顶点着色器计算，但是共享顶点的法线求均值

## 2021-9-22

0. 为什么 active uniform 数量返回的比定义的少? https://www.khronos.org/opengl/wiki/Uniform_(GLSL) 代码里没有使用导致
1. 如何可视化法线?

## 2021-9-23

0. 完成 specularReflectedLight 的调试

## 2021-9-24

0. 法线的变换理解了, 但是实现效果不对, 奇怪了

## 2021-9-27

阅读https://learnopengl-cn.github.io/07%20PBR/01%20Theory/

辐射（Radiation）指的是由发射源（电磁波等）发出的电磁能量中一部分脱离场源向远处传播，而后不再返回场源的现象，能量以电磁波或粒子（如阿尔法粒子、贝塔粒子等）的形式向外扩散。

辐射通量：辐射通量 Φ 表示的是一个光源所输出的能量，以瓦特为单位。
辐射强度(Radiant Intensity)表示的是在单位球面上，一个光源向每单位立体角所投送的辐射通量
辐射率的方程式了。这个方程表示的是，一个拥有辐射强度 Φ 的光源在单位面积 A，单位立体角 ω 上的辐射出的总能量

单个（片段）点上的单束光线的辐射率，我们实际上把立体角 ω 转变为方向向量 ω 然后把面 A 转换为点 p。

反射率公式计算了点 p 在 ωo 方向上被反射出来的辐射率 Lo(p,ωo)的总和。或者换句话说：Lo 表示了从 ωo 方向上观察，光线投射到点 p 上反射出来的辐照度。

问题:

0. 辐射强度为什么需要 dΦ/dω 这里 d 是微分么
1. 你可以把立体角想象成为一个带有体积的方向(为什么是体积不是面积,体积的话是那部分体积呢,是锥体么)
2. 光源单位面积 A 的配图看起来像是半球灯泡

## 2021-10-17

学习还是得继续, 下一站也确定了, 杭州字节.
后面想先弄个简单的, wasm simd 矩阵库, 图形学的就慢慢积累吧

0. 尝鲜 simd 加法

## 2021-10-18

又又发现个手写 wat 的库, 正是我打算实现的 simd 矩阵库 [ftb-matrix](https://github.com/marcchambon/ftb-matrix)
f32x4 需要 convert_i32x4_s, 有点懵了, 感觉不好用, ftb-matrix 思路不错,wasm 就是对 memory 做计算,也没有类的概念,js 负责设置 memory,调用方法,js 的类实例映射到一块 memory

## 2021-10-19

这给向量设置数据也太难了, 只能 replace_lane 么, 这样太难受了, 可能是找到正确的方法, 感觉比一般代码都多, 代码量上面.
感觉应该是从指针里读取,而不是创建一个,然后通过 replace_lane 赋值
ftb-matrix 通过 export 出去的 memory, js 读取数据就是从 Float32Array 的 view 去读取 memory,计算时候就传递向量的指针过去,v128.load 从指针 load 数据

v128 是一个存数据向量,里面可以存任意数据(或者说不关心存的是 i8 还是 f32, 都是运算符决定的), 比如 f32x4.add(v128, v128), 就是把参数的两个向量, 按照 f32x4 的加法运算

## 2021-10-20

从[zeux 大佬看 v8 源码总结出 simd 生成指令个数表格](https://github.com/zeux/wasm-simd/blob/master/Instructions.md)

可以看出, v128.load 只需一个指令, replace_lane 也是一个, 但是需要调用多次, f32x4 就需要 4 次, 初始化 v128 还是得用 v128.load. 还是得老实看官方文档, assemblyscript 的文档还是太稀缺了

[https://github.com/WebAssembly/simd/blob/main/proposals/simd/SIMD.md](https://github.com/WebAssembly/simd/blob/main/proposals/simd/SIMD.md)

Operations on the SIMD value type

The single v128 SIMD type can be used to represent different types of packed data, e.g., it can represent four 32-bit floating point values, 8 16-bit signed or unsigned integer values, etc.

The instructions introduced in this specification are named according to the following schema: {interpretation}.{operation}. Where the {interpretation} prefix denotes how the bytes of the v128 type are interpreted by the {operation}.
比如 f32x4.add, v128 会解析为 f32 4 个 lane, 加法

For example, the instructions f32x4.extract_lane and i64x2.extract_lane perform the same semantic operation: extracting the scalar value of a vector lane. However, the f32x4.extract_lane instruction returns a 32-bit wide floating point value, while the i64x2.extract_lane instruction returns a 64-bit wide integer value.

The floating-point operations in this specification aim to be compatible with WebAssembly's scalar floating-point operations. In particular, the rules about NaN propagation and default NaN values are the same, and all operations use the default roundTiesToEven rounding mode.
本规范中的浮点操作旨在与 WebAssembly 的标量浮点操作兼容。特别是，关于 NaN 传播的规则和默认 NaN 值是相同的，所有操作都使用默认的 roundTiesToEven 舍入模式。

as 的 v128.load 的 immOffset 应该是 simd 的 v128.load 的 memarg.offset 再加个 offset

```python
def S.load(m: memarg):
    return S.from_bytes(memory[memarg.offset:memarg.offset + 16])

## memarg.offset = ptr + immOffset, 验证可以从as的单元测试里找, 或者自己试一下 √ 是这个
```

load 完后 memery 的数据可替换么, 会影响 load 进 v128 的值么? 否, 不会影响

## 2021-10-21

WebGLRenderTarget 没有 antialias, webgl2 则支持[webgl-framebuffer-multisampling](https://stackoverflow.com/questions/47934444/webgl-framebuffer-multisampling), 对应 three.js 的 WebGLMultisampleRenderTarget

## 2021-10-23

0. 发现测试写得也太随意了, 整理了下
1. ftb-matrix 有点出人意料的慢, 手写 wat 的 wasm, 还以为有很好的性能表现, 在10000内wasm+simd有优势, 之后还是js有优势

> 非固定的矩阵乘法运算, Node 16.8.0

```json
{
  "benchmark_100": {
    "JS": "0.19ms (x1.481)",
    "WASM": "0.13ms (x1.000)",
    "WASM_SIMD": "0.17ms (x1.343)",
    "WASM_SIMD_LOOP": "0.14ms (x1.141)",
    "FTB_WASM_SIMD": "1.08ms (x8.532)"
  },
  "benchmark_1000": {
    "JS": "2.34ms (x2.719)",
    "WASM": "3.85ms (x4.467)",
    "WASM_SIMD": "0.86ms (x1.000)",
    "WASM_SIMD_LOOP": "1.02ms (x1.178)",
    "FTB_WASM_SIMD": "11.43ms (x13.257)"
  },
  "benchmark_5000": {
    "JS": "5.49ms (x1.383)",
    "WASM": "5.75ms (x1.450)",
    "WASM_SIMD": "3.97ms (x1.000)",
    "WASM_SIMD_LOOP": "4.92ms (x1.240)",
    "FTB_WASM_SIMD": "34.62ms (x8.724)"
  },
  "benchmark_10000": {
    "JS": "6.77ms (x1.100)",
    "WASM": "8.00ms (x1.301)",
    "WASM_SIMD": "6.15ms (x1.000)",
    "WASM_SIMD_LOOP": "9.49ms (x1.543)",
    "FTB_WASM_SIMD": "64.61ms (x10.506)"
  },
  "benchmark_100000": {
    "JS": "13.99ms (x1.000)",
    "WASM": "41.34ms (x2.954)",
    "WASM_SIMD": "49.47ms (x3.535)",
    "WASM_SIMD_LOOP": "81.05ms (x5.792)",
    "FTB_WASM_SIMD": "600.51ms (x42.909)"
  }
}
```
