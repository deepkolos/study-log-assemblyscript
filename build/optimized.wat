(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_f32_=>_i32 (func (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/simd/Mat4 i32 (i32.const 4))
 (global $~lib/rt/__rtti_base i32 (i32.const 1408))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1164) ",")
 (data (i32.const 1176) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1276) "<")
 (data (i32.const 1288) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1340) "<")
 (data (i32.const 1352) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1408) "\06\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1436) "\02\t")
 (data (i32.const 1452) "\01\19\00\00\02")
 (export "SIMD_ADD" (func $assembly/simd/SIMD_ADD))
 (export "SIMD_CALC" (func $assembly/simd/SIMD_CALC))
 (export "Mat4" (global $assembly/simd/Mat4))
 (export "Mat4#get:elements" (func $assembly/simd/Mat4#get:elements))
 (export "Mat4#set:elements" (func $~lib/arraybuffer/ArrayBufferView#set:buffer))
 (export "Mat4#constructor" (func $assembly/simd/Mat4#constructor))
 (export "Mat4#set" (func $assembly/simd/Mat4#set))
 (export "Mat4#multiply" (func $assembly/simd/Mat4#multiply))
 (export "Mat4#premultiply" (func $assembly/simd/Mat4#premultiply))
 (export "Mat4#multiplyMatrices" (func $assembly/simd/Mat4#multiplyMatrices))
 (export "__new" (func $~lib/rt/stub/__new))
 (export "__pin" (func $~lib/rt/stub/__pin))
 (export "__unpin" (func $~lib/rt/stub/__unpin))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
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
   i32.const 1056
   i32.const 1120
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
   i32.const 1056
   i32.const 1120
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
 (func $~lib/rt/__newArray (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $1
  i32.const 16
  i32.const 3
  call $~lib/rt/stub/__new
  local.tee $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
 )
 (func $assembly/simd/SIMD_ADD (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i32)
  (local $8 i32)
  (local $9 v128)
  call $~lib/rt/__newArray
  local.tee $8
  i32.load offset=4
  drop
  local.get $8
  i32.load offset=4
  i32.const 0
  i32x4.splat
  local.tee $9
  local.get $0
  i32x4.replace_lane 0
  local.get $1
  i32x4.replace_lane 1
  local.get $2
  i32x4.replace_lane 2
  local.get $3
  i32x4.replace_lane 3
  local.get $9
  local.get $4
  i32x4.replace_lane 0
  local.get $5
  i32x4.replace_lane 1
  local.get $6
  i32x4.replace_lane 2
  local.get $7
  i32x4.replace_lane 3
  i32x4.add
  local.tee $9
  i32x4.extract_lane 0
  i32.store
  local.get $8
  i32.load offset=4
  local.get $9
  i32x4.extract_lane 1
  i32.store offset=4
  local.get $8
  i32.load offset=4
  local.get $9
  i32x4.extract_lane 2
  i32.store offset=8
  local.get $8
  i32.load offset=4
  local.get $9
  i32x4.extract_lane 3
  i32.store offset=12
  local.get $8
 )
 (func $assembly/simd/SIMD_CALC (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i32)
  (local $8 v128)
  (local $9 i32)
  (local $10 v128)
  call $~lib/rt/__newArray
  local.tee $9
  i32.load offset=4
  drop
  local.get $9
  i32.load offset=4
  i32.const 0
  i32x4.splat
  local.tee $8
  local.get $0
  i32x4.replace_lane 0
  local.get $1
  i32x4.replace_lane 1
  local.get $2
  i32x4.replace_lane 2
  local.get $3
  i32x4.replace_lane 3
  local.tee $10
  local.get $10
  local.get $8
  local.get $4
  i32x4.replace_lane 0
  local.get $5
  i32x4.replace_lane 1
  local.get $6
  i32x4.replace_lane 2
  local.get $7
  i32x4.replace_lane 3
  local.tee $8
  i32x4.add
  local.get $8
  i32x4.mul
  i32x4.sub
  local.tee $8
  i32x4.extract_lane 0
  i32.store
  local.get $9
  i32.load offset=4
  local.get $8
  i32x4.extract_lane 1
  i32.store offset=4
  local.get $9
  i32.load offset=4
  local.get $8
  i32x4.extract_lane 2
  i32.store offset=8
  local.get $9
  i32.load offset=4
  local.get $8
  i32x4.extract_lane 3
  i32.store offset=12
  local.get $9
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $assembly/simd/Mat4#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  i32.const 12
  i32.const 5
  call $~lib/rt/stub/__new
  local.tee $1
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__new
   local.set $1
  end
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  i32.const 64
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $4
  i32.const 0
  i32.store8
  local.get $4
  i32.const -64
  i32.sub
  local.tee $3
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  local.get $4
  i32.const 0
  i32.store8 offset=1
  local.get $4
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
  local.get $4
  i32.const 0
  i32.store8 offset=3
  local.get $3
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  local.get $4
  i32.const 0
  local.get $4
  i32.sub
  i32.const 3
  i32.and
  local.tee $3
  i32.add
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 64
  local.get $3
  i32.sub
  i32.const -4
  i32.and
  local.tee $5
  i32.add
  local.tee $3
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  block $~lib/util/memory/memset|inlined.0
   local.get $5
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
   local.get $5
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
   local.get $5
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
  local.get $1
  local.get $4
  i32.store
  local.get $1
  local.get $4
  i32.store offset=4
  local.get $1
  i32.const 64
  i32.store offset=8
  local.get $1
  i32.load offset=4
  local.set $3
  i32.const 0
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $5
  local.get $5
  select
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    f32.const 0
    f32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $assembly/simd/Mat4#get:elements (param $0 i32) (result i32)
  local.get $0
  i32.load
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
 (func $assembly/simd/Mat4#set (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (param $5 f32) (param $6 f32) (param $7 f32) (param $8 f32) (param $9 f32) (param $10 f32) (param $11 f32) (param $12 f32) (param $13 f32) (param $14 f32) (param $15 f32) (param $16 f32) (result i32)
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
 (func $assembly/simd/Mat4#multiplyMatrices (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  local.get $2
  i32.load
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $1
  i32.load
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $1
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $1
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  local.set $6
  local.get $1
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $8
  local.get $1
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.set $9
  local.get $1
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  local.set $10
  local.get $1
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  local.set $11
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.set $12
  local.get $1
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  local.set $13
  local.get $1
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  local.set $14
  local.get $1
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  local.set $15
  local.get $1
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.set $16
  local.get $1
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  local.set $17
  local.get $1
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  local.set $18
  local.get $1
  i32.const 15
  call $~lib/typedarray/Float32Array#__get
  local.set $19
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $20
  local.get $2
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.set $21
  local.get $2
  i32.const 8
  call $~lib/typedarray/Float32Array#__get
  local.set $22
  local.get $2
  i32.const 12
  call $~lib/typedarray/Float32Array#__get
  local.set $23
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $24
  local.get $2
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.set $25
  local.get $2
  i32.const 9
  call $~lib/typedarray/Float32Array#__get
  local.set $26
  local.get $2
  i32.const 13
  call $~lib/typedarray/Float32Array#__get
  local.set $27
  local.get $2
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.set $28
  local.get $2
  i32.const 6
  call $~lib/typedarray/Float32Array#__get
  local.set $29
  local.get $2
  i32.const 10
  call $~lib/typedarray/Float32Array#__get
  local.set $30
  local.get $2
  i32.const 14
  call $~lib/typedarray/Float32Array#__get
  local.set $31
  local.get $2
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.set $32
  local.get $2
  i32.const 7
  call $~lib/typedarray/Float32Array#__get
  local.set $33
  local.get $2
  i32.const 11
  call $~lib/typedarray/Float32Array#__get
  local.set $34
  local.get $2
  i32.const 15
  call $~lib/typedarray/Float32Array#__get
  local.set $35
  local.get $3
  i32.const 0
  local.get $4
  local.get $20
  f32.mul
  local.get $5
  local.get $24
  f32.mul
  f32.add
  local.get $6
  local.get $28
  f32.mul
  f32.add
  local.get $7
  local.get $32
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 4
  local.get $4
  local.get $21
  f32.mul
  local.get $5
  local.get $25
  f32.mul
  f32.add
  local.get $6
  local.get $29
  f32.mul
  f32.add
  local.get $7
  local.get $33
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 8
  local.get $4
  local.get $22
  f32.mul
  local.get $5
  local.get $26
  f32.mul
  f32.add
  local.get $6
  local.get $30
  f32.mul
  f32.add
  local.get $7
  local.get $34
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 12
  local.get $4
  local.get $23
  f32.mul
  local.get $5
  local.get $27
  f32.mul
  f32.add
  local.get $6
  local.get $31
  f32.mul
  f32.add
  local.get $7
  local.get $35
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 1
  local.get $8
  local.get $20
  f32.mul
  local.get $9
  local.get $24
  f32.mul
  f32.add
  local.get $10
  local.get $28
  f32.mul
  f32.add
  local.get $11
  local.get $32
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 5
  local.get $8
  local.get $21
  f32.mul
  local.get $9
  local.get $25
  f32.mul
  f32.add
  local.get $10
  local.get $29
  f32.mul
  f32.add
  local.get $11
  local.get $33
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 9
  local.get $8
  local.get $22
  f32.mul
  local.get $9
  local.get $26
  f32.mul
  f32.add
  local.get $10
  local.get $30
  f32.mul
  f32.add
  local.get $11
  local.get $34
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 13
  local.get $8
  local.get $23
  f32.mul
  local.get $9
  local.get $27
  f32.mul
  f32.add
  local.get $10
  local.get $31
  f32.mul
  f32.add
  local.get $11
  local.get $35
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 2
  local.get $12
  local.get $20
  f32.mul
  local.get $13
  local.get $24
  f32.mul
  f32.add
  local.get $14
  local.get $28
  f32.mul
  f32.add
  local.get $15
  local.get $32
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 6
  local.get $12
  local.get $21
  f32.mul
  local.get $13
  local.get $25
  f32.mul
  f32.add
  local.get $14
  local.get $29
  f32.mul
  f32.add
  local.get $15
  local.get $33
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 10
  local.get $12
  local.get $22
  f32.mul
  local.get $13
  local.get $26
  f32.mul
  f32.add
  local.get $14
  local.get $30
  f32.mul
  f32.add
  local.get $15
  local.get $34
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 14
  local.get $12
  local.get $23
  f32.mul
  local.get $13
  local.get $27
  f32.mul
  f32.add
  local.get $14
  local.get $31
  f32.mul
  f32.add
  local.get $15
  local.get $35
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 3
  local.get $16
  local.get $20
  f32.mul
  local.get $17
  local.get $24
  f32.mul
  f32.add
  local.get $18
  local.get $28
  f32.mul
  f32.add
  local.get $19
  local.get $32
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 7
  local.get $16
  local.get $21
  f32.mul
  local.get $17
  local.get $25
  f32.mul
  f32.add
  local.get $18
  local.get $29
  f32.mul
  f32.add
  local.get $19
  local.get $33
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 11
  local.get $16
  local.get $22
  f32.mul
  local.get $17
  local.get $26
  f32.mul
  f32.add
  local.get $18
  local.get $30
  f32.mul
  f32.add
  local.get $19
  local.get $34
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 15
  local.get $16
  local.get $23
  f32.mul
  local.get $17
  local.get $27
  f32.mul
  f32.add
  local.get $18
  local.get $31
  f32.mul
  f32.add
  local.get $19
  local.get $35
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $0
 )
 (func $assembly/simd/Mat4#multiply (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $0
  local.get $1
  call $assembly/simd/Mat4#multiplyMatrices
 )
 (func $assembly/simd/Mat4#premultiply (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $0
  call $assembly/simd/Mat4#multiplyMatrices
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
 (func $~start
  i32.const 1468
  global.set $~lib/rt/stub/offset
 )
 ;; custom section "as-bind_bindings", size 332, contents: "{\"typeIds\":{\"~lib/array/Array<i32>\":{\"id\":3,\"byteSize\":16}},\"importedFunctions\":{},\"exportedFunctions\":{\"SIMD_ADD\":{\"returnType\":\"~lib/array/Array<i32>\",\"parameters\":[\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\"]},\"SIMD_CALC\":{\"returnType\":\"~lib/array/Array<i32>\",\"parameters\":[\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\"]}}}"
)
