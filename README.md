# AssemblyScript 学习日志

## 2021-8-3

0. Getting Start 
1. Basic concepts
2. Implementation status
3. Using the compiler

### 与TS不同点

0. `===`是判断两个完全相同的`object`: `'h'+'ello' === 'hello'` 输出`fasle`
1. null 检查：不支持`if (foo.something)` 需要存储到本地变量后判断 `let something = foo.something`, 然后再判断
2. 非线性编译：从入口开始找依赖编译支持treeshaking
3. 没有`undefined`值 和 `any`类型
4. 没有作用域，闭包
5. 不支持promise,没有事件循环

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

应该是可以产出asm.js，比较全

```
--outFile, -o         Specifies the output file. File extension indicates format.
--binaryFile, -b      Specifies the binary output file (.wasm).
--textFile, -t        Specifies the text output file (.wat).

--jsFile, -j          Specifies the JavaScript output file (.js).
--idlFile, -i         Specifies the WebIDL output file (.webidl).
--tsdFile, -d         Specifies the TypeScript definition output file (.d.ts).
```

> the kitchen sink: everything but the kitchen sink(无所不包，一应俱全)

