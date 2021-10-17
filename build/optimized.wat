(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1168))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1168) "\04\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1196) "\02\t")
 (export "SIMD_ADD" (func $assembly/simd/SIMD_ADD))
 (export "SIMD_CALC" (func $assembly/simd/SIMD_CALC))
 (export "__new" (func $~lib/rt/stub/__new))
 (export "__pin" (func $~lib/rt/stub/__pin))
 (export "__unpin" (func $~lib/rt/stub/__unpin))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
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
  local.tee $3
  i32.const 4
  i32.add
  local.tee $4
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $5
  i32.add
  local.tee $1
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.gt_u
  if
   local.get $2
   local.get $1
   local.get $0
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $0
   local.get $2
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $0
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $1
  global.set $~lib/rt/stub/offset
  local.get $3
  local.get $5
  i32.store
  local.get $4
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
  call $~lib/rt/stub/__alloc
  local.tee $3
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
  local.get $3
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
  (local $8 v128)
  (local $9 i32)
  i32.const 16
  call $~lib/rt/stub/__alloc
  local.tee $9
  local.get $0
  i32.store16
  local.get $9
  local.get $1
  i32.store16 offset=2
  local.get $9
  local.get $2
  i32.store16 offset=4
  local.get $9
  local.get $3
  i32.store16 offset=6
  local.get $9
  v128.load16x4_s align=2
  i32.const 16
  call $~lib/rt/stub/__alloc
  local.tee $0
  local.get $4
  i32.store16
  local.get $0
  local.get $5
  i32.store16 offset=2
  local.get $0
  local.get $6
  i32.store16 offset=4
  local.get $0
  local.get $7
  i32.store16 offset=6
  local.get $0
  v128.load16x4_s align=2
  i32x4.add
  local.set $8
  call $~lib/rt/__newArray
  local.tee $0
  i32.load offset=4
  drop
  local.get $0
  i32.load offset=4
  local.get $8
  i32x4.extract_lane 0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $8
  i32x4.extract_lane 1
  i32.store offset=4
  local.get $0
  i32.load offset=4
  local.get $8
  i32x4.extract_lane 2
  i32.store offset=8
  local.get $0
  i32.load offset=4
  local.get $8
  i32x4.extract_lane 3
  i32.store offset=12
  local.get $0
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
  i32.const 1212
  global.set $~lib/rt/stub/offset
 )
 ;; custom section "as-bind_bindings", size 332, contents: "{\"typeIds\":{\"~lib/array/Array<i32>\":{\"id\":3,\"byteSize\":16}},\"importedFunctions\":{},\"exportedFunctions\":{\"SIMD_ADD\":{\"returnType\":\"~lib/array/Array<i32>\",\"parameters\":[\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\"]},\"SIMD_CALC\":{\"returnType\":\"~lib/array/Array<i32>\",\"parameters\":[\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\",\"i32\"]}}}"
)
