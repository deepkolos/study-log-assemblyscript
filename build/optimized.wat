(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_=>_i32 (func (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 1036) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 1084) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 1148) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 1212) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1276) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1340) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1408) "\06\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\19\00\00\02\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00")
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/matrix/tmpF32x4 (mut i32) (i32.const 0))
 (global $assembly/matrix/tmpF32x4Ptr (mut i32) (i32.const 0))
 (global $assembly/matrix/tmpF32 (mut f32) (f32.const 0))
 (global $assembly/matrix/Matrix4 i32 (i32.const 4))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $assembly/matrix/Vector4 i32 (i32.const 5))
 (global $~lib/rt/__rtti_base i32 (i32.const 1408))
 (export "Matrix4" (global $assembly/matrix/Matrix4))
 (export "Matrix4#get:elements" (func $assembly/matrix/Matrix4#get:elements))
 (export "Matrix4#set:elements" (func $~lib/arraybuffer/ArrayBufferView#set:buffer))
 (export "Matrix4#constructor" (func $assembly/matrix/Matrix4#constructor))
 (export "Matrix4#set" (func $assembly/matrix/Matrix4#set))
 (export "Matrix4#identity" (func $assembly/matrix/Matrix4#identity))
 (export "Matrix4#clone" (func $assembly/matrix/Matrix4#clone))
 (export "Matrix4#fromArray" (func $assembly/matrix/Matrix4#fromArray@varargs))
 (export "Matrix4#copy" (func $assembly/matrix/Matrix4#copy))
 (export "Matrix4#copyPosition" (func $assembly/matrix/Matrix4#copyPosition))
 (export "Matrix4#setFromMatrix3" (func $assembly/matrix/Matrix4#setFromMatrix3))
 (export "Matrix4#multiply" (func $assembly/matrix/Matrix4#multiply))
 (export "Matrix4#premultiply" (func $assembly/matrix/Matrix4#premultiply))
 (export "Matrix4#multiplyMatrices" (func $assembly/matrix/Matrix4#multiplyMatrices))
 (export "Matrix4#multiplyScalar" (func $assembly/matrix/Matrix4#multiplyScalar))
 (export "Matrix4#determinant_no_simd" (func $assembly/matrix/Matrix4#determinant_no_simd))
 (export "Matrix4#determinant" (func $assembly/matrix/Matrix4#determinant))
 (export "Matrix4#transpose" (func $assembly/matrix/Matrix4#transpose))
 (export "Matrix4#invert_no_simd" (func $assembly/matrix/Matrix4#invert_no_simd))
 (export "Matrix4#invert" (func $assembly/matrix/Matrix4#invert))
 (export "Vector4" (global $assembly/matrix/Vector4))
 (export "Vector4#constructor" (func $assembly/matrix/Vector4#constructor))
 (export "__new" (func $~lib/rt/stub/__new))
 (export "__pin" (func $~lib/rt/stub/__pin))
 (export "__unpin" (func $~lib/rt/stub/__unpin))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.tee $6
  i32.const 4
  i32.add
  local.tee $4
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $7
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $3
  i32.gt_u
  if
   local.get $5
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $3
   local.get $5
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $6
  local.get $7
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $4
  i32.const 16
  i32.add
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $5
  local.set $2
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   local.get $2
   i32.add
   local.tee $3
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $3
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $3
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 0
   i32.store8 offset=3
   local.get $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 0
   local.get $2
   i32.sub
   i32.const 3
   i32.and
   local.tee $3
   i32.add
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $1
   local.get $3
   i32.sub
   i32.const -4
   i32.and
   local.tee $4
   i32.add
   local.tee $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $4
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 0
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $4
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 0
   i32.store offset=12
   local.get $2
   i32.const 0
   i32.store offset=16
   local.get $2
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 0
   i32.store offset=24
   local.get $3
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   local.get $2
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $3
   i32.add
   local.set $2
   local.get $4
   local.get $3
   i32.sub
   local.set $3
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    if
     local.get $2
     i64.const 0
     i64.store
     local.get $2
     i64.const 0
     i64.store offset=8
     local.get $2
     i64.const 0
     i64.store offset=16
     local.get $2
     i64.const 0
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $2
     i32.const 32
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
  end
  local.get $0
  local.get $5
  i32.store
  local.get $0
  local.get $5
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Float32Array#__set (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1296
   i32.const 1360
   i32.const 1295
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $assembly/matrix/Matrix4#set (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (param $5 f32) (param $6 f32) (param $7 f32) (param $8 f32) (param $9 f32) (param $10 f32) (param $11 f32) (param $12 f32) (param $13 f32) (param $14 f32) (param $15 f32) (param $16 f32) (result i32)
  (local $17 i32)
  local.get $0
  i32.load
  local.tee $17
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 4
  local.get $2
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 8
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 12
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 1
  local.get $5
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 5
  local.get $6
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 9
  local.get $7
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 13
  local.get $8
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 2
  local.get $9
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 6
  local.get $10
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 10
  local.get $11
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 14
  local.get $12
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 3
  local.get $13
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 7
  local.get $14
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 11
  local.get $15
  call $~lib/typedarray/Float32Array#__set
  local.get $17
  i32.const 15
  local.get $16
  call $~lib/typedarray/Float32Array#__set
  local.get $0
 )
 (func $assembly/matrix/Matrix4#identity (param $0 i32) (result i32)
  local.get $0
  f32.const 1
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 1
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 1
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 1
  call $assembly/matrix/Matrix4#set
  drop
  local.get $0
 )
 (func $assembly/matrix/Matrix4#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 4
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 12
  i32.const 3
  call $~lib/rt/stub/__new
  i32.const 16
  call $~lib/arraybuffer/ArrayBufferView#constructor
  i32.store
  local.get $0
  call $assembly/matrix/Matrix4#identity
  drop
  local.get $0
 )
 (func $assembly/matrix/Matrix4#get:elements (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $~lib/typedarray/Float32Array#__get (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1296
   i32.const 1360
   i32.const 1284
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $assembly/matrix/Matrix4#fromArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load
  local.tee $3
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 1
  local.get $1
  local.get $2
  i32.const 1
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 2
  local.get $1
  local.get $2
  i32.const 2
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 3
  local.get $1
  local.get $2
  i32.const 3
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 4
  local.get $1
  local.get $2
  i32.const 4
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 5
  local.get $1
  local.get $2
  i32.const 5
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 6
  local.get $1
  local.get $2
  i32.const 6
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 7
  local.get $1
  local.get $2
  i32.const 7
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 8
  local.get $1
  local.get $2
  i32.const 8
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 9
  local.get $1
  local.get $2
  i32.const 9
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 10
  local.get $1
  local.get $2
  i32.const 10
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 11
  local.get $1
  local.get $2
  i32.const 11
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 12
  local.get $1
  local.get $2
  i32.const 12
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 13
  local.get $1
  local.get $2
  i32.const 13
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 14
  local.get $1
  local.get $2
  i32.const 14
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 15
  local.get $1
  local.get $2
  i32.const 15
  i32.add
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $0
 )
 (func $assembly/matrix/Matrix4#copy (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.load
  i32.const 0
  call $assembly/matrix/Matrix4#fromArray
 )
 (func $assembly/matrix/Matrix4#clone (param $0 i32) (result i32)
  i32.const 0
  call $assembly/matrix/Matrix4#constructor
  local.get $0
  i32.load
  i32.const 0
  call $assembly/matrix/Matrix4#fromArray
 )
 (func $assembly/matrix/Matrix4#copyPosition (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  i32.const 12
  local.get $1
  i32.load
  local.tee $1
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $2
  i32.const 13
  local.get $1
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $2
  i32.const 14
  local.get $1
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $0
 )
 (func $assembly/matrix/Matrix4#setFromMatrix3 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.load
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  f32.const 0
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  f32.const 0
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 1
  call $assembly/matrix/Matrix4#set
  drop
  local.get $0
 )
 (func $assembly/matrix/Matrix4#multiplyMatrices (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 v128)
  (local $8 v128)
  local.get $1
  i32.load
  local.set $1
  local.get $0
  i32.load
  local.set $3
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $2
  i32.load
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $2
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $2
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $2
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.set $4
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $2
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $2
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $2
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.set $6
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $2
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $2
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $2
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $2
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.set $7
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $2
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $2
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $2
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $2
  i32.const 15
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.set $8
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $4
  f32x4.mul
  local.get $1
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $6
  f32x4.mul
  f32x4.add
  local.get $1
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $7
  f32x4.mul
  f32x4.add
  local.get $1
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $8
  f32x4.mul
  f32x4.add
  local.set $5
  global.get $assembly/matrix/tmpF32x4Ptr
  local.get $5
  v128.store
  local.get $3
  i32.const 0
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 4
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 8
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 12
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $4
  f32x4.mul
  local.get $1
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $6
  f32x4.mul
  f32x4.add
  local.get $1
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $7
  f32x4.mul
  f32x4.add
  local.get $1
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $8
  f32x4.mul
  f32x4.add
  local.set $5
  global.get $assembly/matrix/tmpF32x4Ptr
  local.get $5
  v128.store
  local.get $3
  i32.const 1
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 5
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 9
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 13
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $4
  f32x4.mul
  local.get $1
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $6
  f32x4.mul
  f32x4.add
  local.get $1
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $7
  f32x4.mul
  f32x4.add
  local.get $1
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $8
  f32x4.mul
  f32x4.add
  local.set $5
  global.get $assembly/matrix/tmpF32x4Ptr
  local.get $5
  v128.store
  local.get $3
  i32.const 2
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 6
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 10
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 14
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $4
  f32x4.mul
  local.get $1
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $6
  f32x4.mul
  f32x4.add
  local.get $1
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $7
  f32x4.mul
  f32x4.add
  local.get $1
  i32.const 15
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.get $8
  f32x4.mul
  f32x4.add
  local.set $4
  global.get $assembly/matrix/tmpF32x4Ptr
  local.get $4
  v128.store
  local.get $3
  i32.const 3
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 7
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 11
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 15
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $0
 )
 (func $assembly/matrix/Matrix4#multiply (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $0
  local.get $1
  call $assembly/matrix/Matrix4#multiplyMatrices
 )
 (func $assembly/matrix/Matrix4#premultiply (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $0
  call $assembly/matrix/Matrix4#multiplyMatrices
 )
 (func $assembly/matrix/Matrix4#multiplyScalar (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 v128)
  local.get $0
  i32.load
  i32.load offset=4
  local.tee $2
  local.get $1
  f32x4.splat
  local.tee $3
  local.get $2
  v128.load
  f32x4.mul
  v128.store
  local.get $2
  local.get $3
  local.get $2
  v128.load offset=16
  f32x4.mul
  v128.store offset=16
  local.get $2
  local.get $3
  local.get $2
  v128.load offset=32
  f32x4.mul
  v128.store offset=32
  local.get $2
  local.get $3
  local.get $2
  v128.load offset=48
  f32x4.mul
  v128.store offset=48
  local.get $0
 )
 (func $assembly/matrix/Matrix4#determinant_no_simd (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  local.get $0
  i32.load
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $0
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.set $6
  local.get $0
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  local.set $10
  local.get $0
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $12
  local.get $0
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.set $11
  local.get $0
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  local.set $8
  local.get $0
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  local.set $9
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.set $1
  local.get $0
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  local.set $2
  local.get $0
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  local.set $3
  local.get $0
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.get $7
  local.get $8
  f32.mul
  local.tee $13
  local.get $2
  f32.mul
  local.get $10
  local.get $9
  f32.mul
  local.tee $14
  local.get $2
  f32.mul
  f32.sub
  local.get $7
  local.get $11
  f32.mul
  local.tee $15
  local.get $3
  f32.mul
  f32.sub
  local.get $6
  local.get $9
  f32.mul
  local.tee $16
  local.get $3
  f32.mul
  f32.add
  local.get $10
  local.get $11
  f32.mul
  local.get $4
  f32.mul
  f32.add
  local.get $6
  local.get $8
  f32.mul
  local.tee $17
  local.get $4
  f32.mul
  f32.sub
  f32.mul
  local.get $0
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  local.get $8
  f32.mul
  local.tee $8
  local.get $4
  f32.mul
  local.get $5
  local.get $9
  f32.mul
  local.tee $9
  local.get $3
  f32.mul
  f32.sub
  local.get $7
  local.get $12
  f32.mul
  local.tee $7
  local.get $3
  f32.mul
  f32.add
  local.get $10
  local.get $12
  f32.mul
  local.tee $18
  local.get $4
  f32.mul
  f32.sub
  local.get $14
  local.get $1
  f32.mul
  f32.add
  local.get $13
  local.get $1
  f32.mul
  f32.sub
  f32.mul
  f32.add
  local.get $0
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  local.get $9
  local.get $2
  f32.mul
  local.get $5
  local.get $11
  f32.mul
  local.tee $5
  local.get $4
  f32.mul
  f32.sub
  local.get $7
  local.get $2
  f32.mul
  f32.sub
  local.get $6
  local.get $12
  f32.mul
  local.tee $6
  local.get $4
  f32.mul
  f32.add
  local.get $15
  local.get $1
  f32.mul
  f32.add
  local.get $16
  local.get $1
  f32.mul
  f32.sub
  f32.mul
  f32.add
  local.get $0
  i32.const 15
  call $~lib/typedarray/Float32Array#__get
  local.get $10
  f32.neg
  local.get $11
  f32.mul
  local.get $1
  f32.mul
  local.get $8
  local.get $2
  f32.mul
  f32.sub
  local.get $5
  local.get $3
  f32.mul
  f32.add
  local.get $18
  local.get $2
  f32.mul
  f32.add
  local.get $6
  local.get $3
  f32.mul
  f32.sub
  local.get $17
  local.get $1
  f32.mul
  f32.add
  f32.mul
  f32.add
 )
 (func $assembly/matrix/Matrix4#determinant (param $0 i32) (result f32)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $0
  i32.load
  local.tee $0
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $0
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $0
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $0
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $0
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $0
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $0
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  f32x4.mul
  local.set $1
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $0
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $0
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $0
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $0
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $0
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $0
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $0
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  f32x4.mul
  local.set $2
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $0
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $0
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  f32x4.mul
  drop
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  drop
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $0
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $0
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  drop
  local.get $0
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.set $3
  local.get $0
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  drop
  local.get $0
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  drop
  local.get $0
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.set $4
  local.get $0
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  drop
  local.get $0
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  drop
  local.get $0
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  drop
  local.get $0
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  f32x4.splat
  local.set $5
  local.get $0
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  drop
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $0
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $0
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $0
  i32.const 15
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  local.tee $0
  v128.load
  local.set $6
  local.get $0
  local.get $1
  local.get $2
  f32x4.sub
  local.tee $1
  local.get $3
  f32x4.mul
  v128.store
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  global.set $assembly/matrix/tmpF32
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.add
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.add
  drop
  global.get $assembly/matrix/tmpF32x4Ptr
  local.get $1
  local.get $4
  f32x4.mul
  v128.store
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  drop
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  drop
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  drop
  global.get $assembly/matrix/tmpF32x4Ptr
  local.get $6
  local.get $5
  f32x4.mul
  v128.store
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.add
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.add
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.add
 )
 (func $assembly/matrix/Matrix4#transpose (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  global.set $assembly/matrix/tmpF32
  local.get $1
  i32.const 1
  local.get $1
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 4
  global.get $assembly/matrix/tmpF32
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  global.set $assembly/matrix/tmpF32
  local.get $1
  i32.const 2
  local.get $1
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 8
  global.get $assembly/matrix/tmpF32
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  global.set $assembly/matrix/tmpF32
  local.get $1
  i32.const 6
  local.get $1
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 9
  global.get $assembly/matrix/tmpF32
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  global.set $assembly/matrix/tmpF32
  local.get $1
  i32.const 3
  local.get $1
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 12
  global.get $assembly/matrix/tmpF32
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  global.set $assembly/matrix/tmpF32
  local.get $1
  i32.const 7
  local.get $1
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 13
  global.get $assembly/matrix/tmpF32
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  global.set $assembly/matrix/tmpF32
  local.get $1
  i32.const 11
  local.get $1
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 14
  global.get $assembly/matrix/tmpF32
  call $~lib/typedarray/Float32Array#__set
  local.get $0
 )
 (func $assembly/matrix/Matrix4#invert_no_simd (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 f32)
  (local $24 f32)
  (local $25 f32)
  (local $26 f32)
  (local $27 f32)
  local.get $0
  i32.load
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $20
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $21
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.set $12
  local.get $1
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.set $2
  local.get $1
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.set $15
  local.get $1
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.set $16
  local.get $1
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  local.get $1
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $1
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  local.set $17
  local.get $1
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  local.set $18
  local.get $1
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  local.set $8
  local.get $1
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  local.set $6
  local.get $1
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  local.set $10
  local.get $1
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  local.set $11
  local.get $1
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  local.set $9
  local.get $17
  local.get $11
  f32.mul
  local.tee $3
  local.get $5
  f32.mul
  local.get $10
  local.get $18
  f32.mul
  local.tee $13
  local.get $5
  f32.mul
  f32.sub
  local.get $10
  local.get $16
  f32.mul
  local.tee $14
  local.get $6
  f32.mul
  f32.add
  local.get $15
  local.get $11
  f32.mul
  local.tee $19
  local.get $6
  f32.mul
  f32.sub
  local.get $17
  local.get $16
  f32.mul
  local.tee $24
  local.get $1
  i32.const 15
  call $~lib/typedarray/Float32Array#__get
  local.tee $4
  f32.mul
  f32.sub
  local.get $15
  local.get $18
  f32.mul
  local.tee $22
  local.get $4
  f32.mul
  f32.add
  local.set $23
  local.get $20
  local.get $18
  local.get $9
  f32.mul
  local.get $5
  f32.mul
  local.get $11
  local.get $8
  f32.mul
  local.get $5
  f32.mul
  f32.sub
  local.get $11
  local.get $7
  f32.mul
  local.get $6
  f32.mul
  f32.add
  local.get $16
  local.get $9
  f32.mul
  local.get $6
  f32.mul
  f32.sub
  local.get $18
  local.get $7
  f32.mul
  local.get $4
  f32.mul
  f32.sub
  local.get $16
  local.get $8
  f32.mul
  local.get $4
  f32.mul
  f32.add
  local.tee $25
  f32.mul
  local.get $21
  local.get $10
  local.get $8
  f32.mul
  local.get $5
  f32.mul
  local.get $17
  local.get $9
  f32.mul
  local.get $5
  f32.mul
  f32.sub
  local.get $10
  local.get $7
  f32.mul
  local.get $6
  f32.mul
  f32.sub
  local.get $15
  local.get $9
  f32.mul
  local.get $6
  f32.mul
  f32.add
  local.get $17
  local.get $7
  f32.mul
  local.get $4
  f32.mul
  f32.add
  local.get $15
  local.get $8
  f32.mul
  local.get $4
  f32.mul
  f32.sub
  local.tee $26
  f32.mul
  f32.add
  local.get $12
  local.get $23
  f32.mul
  f32.add
  local.get $2
  local.get $13
  local.get $7
  f32.mul
  local.get $3
  local.get $7
  f32.mul
  f32.sub
  local.get $14
  local.get $8
  f32.mul
  f32.sub
  local.get $19
  local.get $8
  f32.mul
  f32.add
  local.get $24
  local.get $9
  f32.mul
  f32.add
  local.get $22
  local.get $9
  f32.mul
  f32.sub
  local.tee $24
  f32.mul
  f32.add
  local.tee $3
  f32.const 0
  f32.eq
  if
   local.get $0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   call $assembly/matrix/Matrix4#set
   return
  end
  local.get $1
  i32.const 0
  local.get $25
  f32.const 1
  local.get $3
  f32.div
  local.tee $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $11
  local.get $8
  f32.mul
  local.get $2
  f32.mul
  local.get $18
  local.get $9
  f32.mul
  local.get $2
  f32.mul
  f32.sub
  local.get $11
  local.get $12
  f32.mul
  local.tee $13
  local.get $6
  f32.mul
  f32.sub
  local.get $21
  local.get $9
  f32.mul
  local.tee $14
  local.get $6
  f32.mul
  f32.add
  local.get $18
  local.get $12
  f32.mul
  local.tee $19
  local.get $4
  f32.mul
  f32.add
  local.get $21
  local.get $8
  f32.mul
  local.tee $22
  local.get $4
  f32.mul
  f32.sub
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  local.get $16
  local.get $9
  f32.mul
  local.get $2
  f32.mul
  local.get $11
  local.get $7
  f32.mul
  local.get $2
  f32.mul
  f32.sub
  local.get $13
  local.get $5
  f32.mul
  f32.add
  local.get $14
  local.get $5
  f32.mul
  f32.sub
  local.get $16
  local.get $12
  f32.mul
  local.tee $13
  local.get $4
  f32.mul
  f32.sub
  local.get $21
  local.get $7
  f32.mul
  local.tee $14
  local.get $4
  f32.mul
  f32.add
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 3
  local.get $18
  local.get $7
  f32.mul
  local.get $2
  f32.mul
  local.get $16
  local.get $8
  f32.mul
  local.get $2
  f32.mul
  f32.sub
  local.get $19
  local.get $5
  f32.mul
  f32.sub
  local.get $22
  local.get $5
  f32.mul
  f32.add
  local.get $13
  local.get $6
  f32.mul
  f32.add
  local.get $14
  local.get $6
  f32.mul
  f32.sub
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 4
  local.get $26
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 5
  local.get $17
  local.get $9
  f32.mul
  local.get $2
  f32.mul
  local.get $10
  local.get $8
  f32.mul
  local.get $2
  f32.mul
  f32.sub
  local.get $10
  local.get $12
  f32.mul
  local.tee $13
  local.get $6
  f32.mul
  f32.add
  local.get $20
  local.get $9
  f32.mul
  local.tee $14
  local.get $6
  f32.mul
  f32.sub
  local.get $17
  local.get $12
  f32.mul
  local.tee $19
  local.get $4
  f32.mul
  f32.sub
  local.get $20
  local.get $8
  f32.mul
  local.tee $22
  local.get $4
  f32.mul
  f32.add
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 6
  local.get $10
  local.get $7
  f32.mul
  local.get $2
  f32.mul
  local.get $15
  local.get $9
  f32.mul
  local.get $2
  f32.mul
  f32.sub
  local.get $13
  local.get $5
  f32.mul
  f32.sub
  local.get $14
  local.get $5
  f32.mul
  f32.add
  local.get $15
  local.get $12
  f32.mul
  local.tee $13
  local.get $4
  f32.mul
  f32.add
  local.get $20
  local.get $7
  f32.mul
  local.tee $14
  local.get $4
  f32.mul
  f32.sub
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 7
  local.get $15
  local.get $8
  f32.mul
  local.get $2
  f32.mul
  local.get $17
  local.get $7
  f32.mul
  local.get $2
  f32.mul
  f32.sub
  local.get $19
  local.get $5
  f32.mul
  f32.add
  local.get $22
  local.get $5
  f32.mul
  f32.sub
  local.get $13
  local.get $6
  f32.mul
  f32.sub
  local.get $14
  local.get $6
  f32.mul
  f32.add
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 8
  local.get $23
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 9
  local.get $10
  local.get $18
  f32.mul
  local.tee $22
  local.get $2
  f32.mul
  local.get $17
  local.get $11
  f32.mul
  local.tee $25
  local.get $2
  f32.mul
  f32.sub
  local.get $10
  local.get $21
  f32.mul
  local.tee $23
  local.get $6
  f32.mul
  f32.sub
  local.get $20
  local.get $11
  f32.mul
  local.tee $13
  local.get $6
  f32.mul
  f32.add
  local.get $17
  local.get $21
  f32.mul
  local.tee $14
  local.get $4
  f32.mul
  f32.add
  local.get $20
  local.get $18
  f32.mul
  local.tee $19
  local.get $4
  f32.mul
  f32.sub
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 10
  local.get $15
  local.get $11
  f32.mul
  local.tee $26
  local.get $2
  f32.mul
  local.get $10
  local.get $16
  f32.mul
  local.tee $27
  local.get $2
  f32.mul
  f32.sub
  local.get $23
  local.get $5
  f32.mul
  f32.add
  local.get $13
  local.get $5
  f32.mul
  f32.sub
  local.get $15
  local.get $21
  f32.mul
  local.tee $10
  local.get $4
  f32.mul
  f32.sub
  local.get $20
  local.get $16
  f32.mul
  local.tee $11
  local.get $4
  f32.mul
  f32.add
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 11
  local.get $17
  local.get $16
  f32.mul
  local.tee $4
  local.get $2
  f32.mul
  local.get $15
  local.get $18
  f32.mul
  local.tee $15
  local.get $2
  f32.mul
  f32.sub
  local.get $14
  local.get $5
  f32.mul
  f32.sub
  local.get $19
  local.get $5
  f32.mul
  f32.add
  local.get $10
  local.get $6
  f32.mul
  f32.add
  local.get $11
  local.get $6
  f32.mul
  f32.sub
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 12
  local.get $24
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 13
  local.get $25
  local.get $12
  f32.mul
  local.get $22
  local.get $12
  f32.mul
  f32.sub
  local.get $23
  local.get $8
  f32.mul
  f32.add
  local.get $13
  local.get $8
  f32.mul
  f32.sub
  local.get $14
  local.get $9
  f32.mul
  f32.sub
  local.get $19
  local.get $9
  f32.mul
  f32.add
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 14
  local.get $27
  local.get $12
  f32.mul
  local.get $26
  local.get $12
  f32.mul
  f32.sub
  local.get $23
  local.get $7
  f32.mul
  f32.sub
  local.get $13
  local.get $7
  f32.mul
  f32.add
  local.get $10
  local.get $9
  f32.mul
  f32.add
  local.get $11
  local.get $9
  f32.mul
  f32.sub
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 15
  local.get $15
  local.get $12
  f32.mul
  local.get $4
  local.get $12
  f32.mul
  f32.sub
  local.get $14
  local.get $7
  f32.mul
  f32.add
  local.get $19
  local.get $7
  f32.mul
  f32.sub
  local.get $10
  local.get $8
  f32.mul
  f32.sub
  local.get $11
  local.get $8
  f32.mul
  f32.add
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $0
 )
 (func $assembly/matrix/Matrix4#invert (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 v128)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 v128)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 v128)
  (local $11 v128)
  (local $12 i32)
  (local $13 v128)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 v128)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 v128)
  (local $22 v128)
  (local $23 f32)
  (local $24 f32)
  (local $25 f32)
  (local $26 v128)
  (local $27 f32)
  local.get $0
  i32.load
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $27
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $23
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.set $24
  local.get $1
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.set $18
  local.get $1
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.set $25
  local.get $1
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.set $8
  local.get $1
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  local.set $9
  local.get $1
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  local.set $19
  local.get $1
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  local.set $16
  local.get $1
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $1
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $1
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  local.set $14
  local.get $1
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  local.set $15
  local.get $1
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  local.set $3
  local.get $1
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  local.get $1
  i32.const 15
  call $~lib/typedarray/Float32Array#__get
  local.set $20
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $7
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $5
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  local.get $15
  f32x4.splat
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  f32x4.mul
  local.get $19
  f32x4.splat
  local.tee $10
  f32x4.mul
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $5
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $7
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.set $2
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $7
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $7
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $3
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  local.get $16
  f32x4.splat
  local.tee $11
  local.get $2
  f32x4.mul
  local.get $10
  f32x4.mul
  f32x4.sub
  local.get $15
  f32.neg
  f32x4.splat
  local.get $2
  f32x4.mul
  local.get $14
  f32x4.splat
  local.tee $2
  f32x4.mul
  f32x4.add
  local.get $2
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  f32x4.mul
  local.get $2
  f32x4.mul
  f32x4.add
  local.get $11
  local.get $9
  f32x4.splat
  f32x4.mul
  local.get $20
  f32x4.splat
  local.tee $2
  f32x4.mul
  f32x4.add
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $5
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $5
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $4
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $25
  f32x4.splat
  global.get $assembly/matrix/tmpF32x4Ptr
  local.tee $12
  v128.load
  f32x4.mul
  local.get $2
  f32x4.mul
  f32x4.add
  local.set $2
  local.get $12
  local.get $1
  i32.load offset=4
  v128.load
  local.get $2
  f32x4.mul
  v128.store
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.add
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.add
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.add
  local.tee $14
  f32.const 0
  f32.eq
  if
   local.get $0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   call $assembly/matrix/Matrix4#set
   return
  end
  global.get $assembly/matrix/tmpF32x4Ptr
  local.get $2
  f32.const 1
  local.get $14
  f32.div
  f32x4.splat
  local.tee $10
  f32x4.mul
  v128.store
  local.get $1
  i32.const 0
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 4
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 8
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 12
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $8
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $16
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.get $7
  f32x4.splat
  local.tee $11
  f32x4.mul
  local.get $18
  f32x4.splat
  local.tee $6
  f32x4.mul
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $8
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $15
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.get $11
  f32x4.mul
  local.get $6
  f32x4.mul
  f32x4.sub
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $3
  f32.neg
  local.tee $18
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $4
  f32.neg
  local.tee $14
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $15
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.get $24
  f32x4.splat
  local.tee $2
  f32x4.mul
  local.get $19
  f32x4.splat
  local.tee $13
  f32x4.mul
  f32x4.add
  local.get $23
  f32x4.splat
  local.tee $26
  local.get $7
  f32.neg
  f32x4.splat
  f32x4.mul
  local.get $13
  f32x4.mul
  f32x4.add
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $8
  f32.neg
  local.tee $19
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $8
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $16
  f32.neg
  local.tee $23
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.get $2
  f32x4.mul
  local.get $20
  f32x4.splat
  local.tee $17
  f32x4.mul
  f32x4.add
  local.set $21
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $5
  f32.neg
  local.tee $20
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $9
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $9
  f32.neg
  local.tee $24
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $5
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  local.tee $12
  local.get $21
  local.get $26
  local.get $12
  v128.load
  f32x4.mul
  local.get $17
  f32x4.mul
  f32x4.add
  local.get $10
  f32x4.mul
  v128.store
  local.get $1
  i32.const 1
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 3
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 5
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $9
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $5
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  local.get $25
  f32x4.splat
  local.tee $21
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  f32x4.mul
  local.get $6
  f32x4.mul
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $7
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $9
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $8
  call $~lib/typedarray/Float32Array#__set
  local.get $16
  f32x4.splat
  local.tee $22
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  f32x4.mul
  local.get $6
  f32x4.mul
  f32x4.sub
  local.get $15
  f32.neg
  local.tee $5
  f32x4.splat
  local.get $2
  f32x4.mul
  local.get $13
  f32x4.mul
  f32x4.add
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $7
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $20
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $18
  call $~lib/typedarray/Float32Array#__set
  local.get $27
  f32x4.splat
  local.tee $6
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  f32x4.mul
  local.get $13
  f32x4.mul
  f32x4.add
  local.get $25
  f32.neg
  f32x4.splat
  local.get $2
  f32x4.mul
  local.get $17
  f32x4.mul
  f32x4.add
  local.set $13
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $24
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $9
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $14
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $8
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  local.tee $12
  local.get $13
  local.get $6
  local.get $12
  v128.load
  f32x4.mul
  local.get $17
  f32x4.mul
  f32x4.add
  local.get $10
  f32x4.mul
  v128.store
  local.get $1
  i32.const 6
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 7
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 9
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 10
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $23
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $15
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $5
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $16
  call $~lib/typedarray/Float32Array#__set
  local.get $22
  local.get $8
  f32x4.splat
  f32x4.mul
  local.get $2
  f32x4.mul
  local.get $21
  local.get $22
  f32x4.mul
  local.get $2
  f32x4.mul
  f32x4.sub
  global.get $assembly/matrix/tmpF32x4Ptr
  v128.load
  local.get $26
  f32x4.mul
  local.get $9
  f32x4.splat
  local.tee $2
  f32x4.mul
  f32x4.add
  local.set $13
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  local.get $18
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  local.get $14
  call $~lib/typedarray/Float32Array#__set
  global.get $assembly/matrix/tmpF32x4Ptr
  local.tee $12
  local.get $13
  local.get $6
  local.get $12
  v128.load
  f32x4.mul
  local.get $2
  f32x4.mul
  f32x4.add
  local.get $21
  local.get $26
  f32x4.mul
  local.get $11
  f32x4.mul
  f32x4.add
  local.get $6
  local.get $19
  f32x4.splat
  f32x4.mul
  local.get $11
  f32x4.mul
  f32x4.add
  local.get $10
  f32x4.mul
  v128.store
  local.get $1
  i32.const 11
  global.get $assembly/matrix/tmpF32x4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 13
  global.get $assembly/matrix/tmpF32x4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 14
  global.get $assembly/matrix/tmpF32x4
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 15
  global.get $assembly/matrix/tmpF32x4
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $0
 )
 (func $assembly/matrix/Vector4#constructor (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 5
   call $~lib/rt/stub/__new
  end
 )
 (func $assembly/matrix/Matrix4#fromArray@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $assembly/matrix/Matrix4#fromArray
 )
 (func $~lib/rt/stub/__pin (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__unpin (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect
  nop
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  i32.const 1468
  global.set $~lib/rt/stub/offset
  i32.const 12
  i32.const 3
  call $~lib/rt/stub/__new
  i32.const 4
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.set $assembly/matrix/tmpF32x4
  global.get $assembly/matrix/tmpF32x4
  i32.load offset=4
  global.set $assembly/matrix/tmpF32x4Ptr
 )
 ;; custom section "as-bind_bindings", size 60, contents: "{\"typeIds\":{},\"importedFunctions\":{},\"exportedFunctions\":{}}"
)
