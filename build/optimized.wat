(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $assembly/base64/a (mut i32) (i32.const 0))
 (global $assembly/base64/b (mut i32) (i32.const 0))
 (global $assembly/base64/c (mut i32) (i32.const 0))
 (global $assembly/base64/d (mut i32) (i32.const 0))
 (global $assembly/base64/e (mut i32) (i32.const 0))
 (global $assembly/base64/chunk (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1696))
 (memory $0 1)
 (data (i32.const 1036) "\1c\01")
 (data (i32.const 1048) "\03\00\00\00\00\01\00\00A\00\00\00B\00\00\00C\00\00\00D\00\00\00E\00\00\00F\00\00\00G\00\00\00H\00\00\00I\00\00\00J\00\00\00K\00\00\00L\00\00\00M\00\00\00N\00\00\00O\00\00\00P\00\00\00Q\00\00\00R\00\00\00S\00\00\00T\00\00\00U\00\00\00V\00\00\00W\00\00\00X\00\00\00Y\00\00\00Z\00\00\00a\00\00\00b\00\00\00c\00\00\00d\00\00\00e\00\00\00f\00\00\00g\00\00\00h\00\00\00i\00\00\00j\00\00\00k\00\00\00l\00\00\00m\00\00\00n\00\00\00o\00\00\00p\00\00\00q\00\00\00r\00\00\00s\00\00\00t\00\00\00u\00\00\00v\00\00\00w\00\00\00x\00\00\00y\00\00\00z\00\00\000\00\00\001\00\00\002\00\00\003\00\00\004\00\00\005\00\00\006\00\00\007\00\00\008\00\00\009\00\00\00+\00\00\00/")
 (data (i32.const 1324) "<")
 (data (i32.const 1336) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1388) "<")
 (data (i32.const 1400) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1452) "\1c")
 (data (i32.const 1464) "\01")
 (data (i32.const 1484) "<")
 (data (i32.const 1496) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1548) "<")
 (data (i32.const 1560) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1612) "L")
 (data (i32.const 1624) "\01\00\00\008\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00s\00t\00r\00i\00n\00g\00-\00s\00i\00n\00k\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 1696) "\06\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1724) "$\t\00\00\00\00\00\00A\00\00\00\02")
 (export "base64ArrayBuffer" (func $assembly/base64/base64ArrayBuffer))
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
   i32.const 1344
   i32.const 1408
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
  local.tee $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $1
   local.get $2
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
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
   i32.const 1344
   i32.const 1408
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
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $4
      i32.const 2
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 2
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $4
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/staticarray/StaticArray<i32>#__get (param $0 i32) (result i32)
  local.get $0
  i32.const 1052
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1504
   i32.const 1568
   i32.const 113
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.shl
  i32.const 1056
  i32.add
  i32.load
 )
 (func $~lib/as-string-sink/index/StringSink#writeCodePoint (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.load offset=4
  i32.const 2
  local.get $1
  i32.const 65535
  i32.gt_u
  local.tee $9
  i32.shl
  i32.add
  local.tee $3
  local.get $0
  i32.load
  local.tee $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.gt_u
  if
   i32.const 1
   i32.const 32
   local.get $3
   i32.const 1
   i32.sub
   i32.clz
   i32.sub
   i32.shl
   local.tee $7
   i32.const 1073741804
   i32.gt_u
   if
    i32.const 1344
    i32.const 1408
    i32.const 99
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 16
   i32.add
   local.set $4
   local.get $2
   i32.const 16
   i32.sub
   local.tee $3
   i32.const 15
   i32.and
   i32.const 1
   local.get $3
   select
   if
    i32.const 0
    i32.const 1408
    i32.const 45
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/stub/offset
   local.get $3
   local.get $3
   i32.const 4
   i32.sub
   local.tee $8
   i32.load
   local.tee $5
   i32.add
   i32.eq
   local.set $2
   local.get $4
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
   local.set $6
   local.get $4
   local.get $5
   i32.gt_u
   if
    local.get $2
    if
     local.get $4
     i32.const 1073741820
     i32.gt_u
     if
      i32.const 1344
      i32.const 1408
      i32.const 52
      i32.const 33
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     local.get $6
     i32.add
     local.tee $4
     memory.size
     local.tee $5
     i32.const 16
     i32.shl
     i32.const 15
     i32.add
     i32.const -16
     i32.and
     local.tee $2
     i32.gt_u
     if
      local.get $5
      local.get $4
      local.get $2
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee $2
      local.get $2
      local.get $5
      i32.lt_s
      select
      memory.grow
      i32.const 0
      i32.lt_s
      if
       local.get $2
       memory.grow
       i32.const 0
       i32.lt_s
       if
        unreachable
       end
      end
     end
     local.get $4
     global.set $~lib/rt/stub/offset
     local.get $8
     local.get $6
     i32.store
    else
     local.get $6
     local.get $5
     i32.const 1
     i32.shl
     local.tee $2
     local.get $2
     local.get $6
     i32.lt_u
     select
     call $~lib/rt/stub/__alloc
     local.tee $2
     local.get $3
     local.get $5
     call $~lib/memory/memory.copy
     local.get $2
     local.set $3
    end
   else
    local.get $2
    if
     local.get $3
     local.get $6
     i32.add
     global.set $~lib/rt/stub/offset
     local.get $8
     local.get $6
     i32.store
    end
   end
   local.get $3
   i32.const 4
   i32.sub
   local.get $7
   i32.store offset=16
   local.get $0
   local.get $3
   i32.const 16
   i32.add
   i32.store
  end
  local.get $0
  i32.load offset=4
  local.tee $3
  local.get $0
  i32.load
  i32.add
  local.set $2
  local.get $9
  if
   local.get $1
   i32.const 1114111
   i32.gt_u
   if
    i32.const 0
    i32.const 1632
    i32.const 105
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 65536
   i32.sub
   local.tee $1
   i32.const 10
   i32.shr_u
   i32.const 55296
   i32.or
   local.get $1
   i32.const 1023
   i32.and
   i32.const 56320
   i32.or
   i32.const 16
   i32.shl
   i32.or
   i32.store
   local.get $0
   local.get $3
   i32.const 4
   i32.add
   i32.store offset=4
  else
   local.get $2
   local.get $1
   i32.store16
   local.get $0
   local.get $3
   i32.const 2
   i32.add
   i32.store offset=4
  end
 )
 (func $assembly/base64/base64ArrayBuffer (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 8
  i32.const 5
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 1468
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 64
  local.get $2
  i32.const 64
  i32.gt_u
  select
  i32.const 0
  call $~lib/rt/stub/__new
  i32.store
  local.get $2
  if
   local.get $1
   i32.load
   i32.const 1472
   local.get $2
   call $~lib/memory/memory.copy
   local.get $1
   local.get $2
   local.get $1
   i32.load offset=4
   i32.add
   i32.store offset=4
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 3
  i32.rem_s
  local.set $5
  local.get $2
  local.get $5
  i32.sub
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $4
   i32.lt_s
   if
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.add
    i32.add
    i32.load8_u
    local.get $3
    local.get $0
    i32.load offset=4
    i32.add
    i32.load8_u
    i32.const 16
    i32.shl
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 1
    i32.add
    i32.add
    i32.load8_u
    i32.const 8
    i32.shl
    i32.or
    i32.or
    global.set $assembly/base64/chunk
    global.get $assembly/base64/chunk
    local.tee $2
    i32.const 16515072
    i32.and
    i32.const 18
    i32.shr_u
    global.set $assembly/base64/a
    local.get $2
    i32.const 258048
    i32.and
    i32.const 12
    i32.shr_u
    global.set $assembly/base64/b
    local.get $2
    i32.const 4032
    i32.and
    i32.const 6
    i32.shr_u
    global.set $assembly/base64/c
    local.get $2
    i32.const 63
    i32.and
    global.set $assembly/base64/d
    local.get $1
    global.get $assembly/base64/a
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $1
    global.get $assembly/base64/b
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $1
    global.get $assembly/base64/c
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $1
    global.get $assembly/base64/d
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    global.get $assembly/base64/e
    i32.const 4
    i32.add
    global.set $assembly/base64/e
    local.get $3
    i32.const 3
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $5
  i32.const 1
  i32.eq
  if
   local.get $4
   local.get $0
   i32.load offset=4
   i32.add
   i32.load8_u
   global.set $assembly/base64/chunk
   global.get $assembly/base64/chunk
   local.tee $0
   i32.const 252
   i32.and
   i32.const 2
   i32.shr_u
   global.set $assembly/base64/a
   local.get $0
   i32.const 3
   i32.and
   i32.const 4
   i32.shl
   global.set $assembly/base64/b
   local.get $1
   global.get $assembly/base64/a
   call $~lib/staticarray/StaticArray<i32>#__get
   call $~lib/as-string-sink/index/StringSink#writeCodePoint
   local.get $1
   global.get $assembly/base64/b
   call $~lib/staticarray/StaticArray<i32>#__get
   call $~lib/as-string-sink/index/StringSink#writeCodePoint
   local.get $1
   i32.const 61
   call $~lib/as-string-sink/index/StringSink#writeCodePoint
   local.get $1
   i32.const 61
   call $~lib/as-string-sink/index/StringSink#writeCodePoint
  else
   local.get $5
   i32.const 2
   i32.eq
   if
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 1
    i32.add
    i32.add
    i32.load8_u
    local.get $4
    local.get $0
    i32.load offset=4
    i32.add
    i32.load8_u
    i32.const 8
    i32.shl
    i32.or
    global.set $assembly/base64/chunk
    global.get $assembly/base64/chunk
    local.tee $0
    i32.const 64512
    i32.and
    i32.const 10
    i32.shr_u
    global.set $assembly/base64/a
    local.get $0
    i32.const 1008
    i32.and
    i32.const 4
    i32.shr_u
    global.set $assembly/base64/b
    local.get $0
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    global.set $assembly/base64/c
    local.get $1
    global.get $assembly/base64/a
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $1
    global.get $assembly/base64/b
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $1
    global.get $assembly/base64/c
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $1
    i32.const 61
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
   end
  end
  i32.const 1472
  local.set $0
  local.get $1
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   i32.const 1
   call $~lib/rt/stub/__new
   local.tee $0
   local.get $1
   i32.load
   local.get $2
   call $~lib/memory/memory.copy
  end
  local.get $0
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
  i32.const 1756
  global.set $~lib/rt/stub/offset
 )
 ;; custom section "as-bind_bindings", size 253, contents: "{\"typeIds\":{\"~lib/string/String\":{\"id\":1,\"byteSize\":0},\"~lib/typedarray/Uint8Array\":{\"id\":4,\"byteSize\":12}},\"importedFunctions\":{},\"exportedFunctions\":{\"base64ArrayBuffer\":{\"returnType\":\"~lib/string/String\",\"parameters\":[\"~lib/typedarray/Uint8Array\"]}}}"
)
