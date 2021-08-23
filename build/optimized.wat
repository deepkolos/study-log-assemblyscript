(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "gltf-renderer" "console.log" (func $assembly/gltf-renderer/console.log (param i32)))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $assembly/gltf-renderer/gltf (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 4048))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1260) "\1c")
 (data (i32.const 1292) "\1c")
 (data (i32.const 1304) "\01")
 (data (i32.const 1324) "\1c")
 (data (i32.const 1356) "\1c")
 (data (i32.const 1388) "\1c")
 (data (i32.const 1420) "\1c")
 (data (i32.const 1452) "\1c")
 (data (i32.const 1484) "\1c")
 (data (i32.const 1516) "\1c")
 (data (i32.const 1548) "\1c")
 (data (i32.const 1580) "\1c")
 (data (i32.const 1612) "\1c")
 (data (i32.const 1644) "\1c")
 (data (i32.const 1676) ",")
 (data (i32.const 1688) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1724) ",")
 (data (i32.const 1736) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1772) "\1c")
 (data (i32.const 1804) "<")
 (data (i32.const 1816) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1868) "|")
 (data (i32.const 1880) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 1996) "\1c")
 (data (i32.const 2028) ",")
 (data (i32.const 2040) "\01\00\00\00\14\00\00\00g\00l\00t\00f\00 \00i\00n\00f\00o\00:")
 (data (i32.const 2076) "|")
 (data (i32.const 2088) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 2204) "<")
 (data (i32.const 2216) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2280) "\01\00\00\00\02\00\00\000")
 (data (i32.const 2300) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2700) "\1c\04")
 (data (i32.const 2712) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 3756) "\\")
 (data (i32.const 3768) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3852) "<")
 (data (i32.const 3864) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 3948) "<")
 (data (i32.const 3960) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4048) " \00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 4092) "\02\01\00\00\00\00\00\00\02A")
 (data (i32.const 4116) " \00\00\00\00\00\00\00\02A")
 (data (i32.const 4140) "\02A")
 (data (i32.const 4156) "\02A")
 (data (i32.const 4180) " \00\00\00\00\00\00\00\02A")
 (data (i32.const 4212) " \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A")
 (data (i32.const 4244) "\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A")
 (data (i32.const 4276) "\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t")
 (export "glTFSetAsset" (func $assembly/gltf-renderer/glTFSetAsset))
 (export "glTFAddAccessor" (func $assembly/gltf-renderer/glTFAddAccessor))
 (export "glTFAddBufferView" (func $assembly/gltf-renderer/glTFAddBufferView))
 (export "glTFAddBuffer" (func $assembly/gltf-renderer/glTFAddBuffer))
 (export "glTFAddImage" (func $assembly/gltf-renderer/glTFAddImage))
 (export "glTFAddMaterial" (func $assembly/gltf-renderer/glTFAddMaterial))
 (export "glTFAddMesh" (func $assembly/gltf-renderer/glTFAddMesh))
 (export "glTFAddMeshPrimitive" (func $assembly/gltf-renderer/glTFAddMeshPrimitive))
 (export "glTFAddNode" (func $assembly/gltf-renderer/glTFAddNode))
 (export "glTFAddSampler" (func $assembly/gltf-renderer/glTFAddSampler))
 (export "glTFAddScene" (func $assembly/gltf-renderer/glTFAddScene))
 (export "glTFAddTexture" (func $assembly/gltf-renderer/glTFAddTexture))
 (export "main" (func $assembly/gltf-renderer/main))
 (export "__new" (func $~lib/rt/tcms/__new))
 (export "__pin" (func $~lib/rt/tcms/__pin))
 (export "__unpin" (func $~lib/rt/tcms/__unpin))
 (export "__collect" (func $~lib/rt/tcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.set $3
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1184
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $3
   i32.const 1073741820
   local.get $3
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $5
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $5
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1184
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1184
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 4320
  i32.const 0
  i32.store
  i32.const 5888
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 4320
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 4320
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 4320
  i32.const 5892
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 4320
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1184
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1184
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1184
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
   else
    local.get $1
   end
   i32.const 4
   memory.size
   local.tee $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.gt_s
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
   local.get $0
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1184
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $1
  i32.lt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 125
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $0
  local.get $2
  local.get $1
  global.get $~lib/rt/tcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/tcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/tcms/total
  local.get $2
  i32.const 20
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
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $2
  local.get $1
  if
   local.get $2
   local.get $1
   i32.const 0
   call $~lib/memory/memory.copy
  end
  i32.const 16
  local.get $0
  call $~lib/rt/tcms/__new
  local.tee $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $assembly/gltf-renderer/glTFSetAsset (param $0 i32) (param $1 i32)
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=4
  local.get $0
  i32.store
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=4
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.load
   i32.const 1
   i32.and
  end
  if
   i32.const 0
   i32.const 1184
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/moveBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 4308
  i32.ge_u
  if
   local.get $1
   local.get $1
   i32.load
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  end
  local.get $2
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1696
    i32.const 1744
    i32.const 17
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $6
   local.set $5
   local.get $2
   local.tee $3
   i32.const 1
   i32.shl
   local.tee $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   local.get $1
   local.get $2
   i32.lt_u
   select
   local.tee $8
   local.set $4
   local.get $6
   i32.const 20
   i32.sub
   local.set $2
   block $__inlined_func$~lib/rt/tcms/__renew
    local.get $6
    i32.const 4308
    i32.lt_u
    if
     local.get $4
     local.get $2
     i32.load offset=12
     call $~lib/rt/tcms/__new
     local.tee $1
     local.get $5
     local.get $4
     local.get $2
     i32.load offset=16
     local.tee $2
     local.get $2
     local.get $4
     i32.gt_u
     select
     call $~lib/memory/memory.copy
     br $__inlined_func$~lib/rt/tcms/__renew
    end
    local.get $4
    i32.const 1073741804
    i32.gt_u
    if
     i32.const 1056
     i32.const 1120
     i32.const 143
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/rt/tcms/total
    local.get $2
    i32.load
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.sub
    global.set $~lib/rt/tcms/total
    local.get $5
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.const 16
    i32.add
    local.set $2
    global.get $~lib/rt/tlsf/ROOT
    i32.eqz
    if
     call $~lib/rt/tlsf/initialize
    end
    local.get $1
    i32.const 4308
    i32.lt_u
    if
     global.get $~lib/rt/tlsf/ROOT
     local.get $1
     call $~lib/rt/tlsf/checkUsedBlock
     local.get $2
     call $~lib/rt/tlsf/moveBlock
     local.set $1
    else
     block $__inlined_func$~lib/rt/tlsf/reallocateBlock
      global.get $~lib/rt/tlsf/ROOT
      local.set $5
      local.get $1
      call $~lib/rt/tlsf/checkUsedBlock
      local.set $1
      block $folding-inner0
       local.get $2
       call $~lib/rt/tlsf/prepareSize
       local.tee $9
       local.get $1
       i32.load
       local.tee $10
       i32.const -4
       i32.and
       local.tee $7
       i32.le_u
       br_if $folding-inner0
       local.get $1
       i32.const 4
       i32.add
       local.get $1
       i32.load
       i32.const -4
       i32.and
       i32.add
       local.tee $11
       i32.load
       local.tee $12
       i32.const 1
       i32.and
       if
        local.get $9
        local.get $7
        i32.const 4
        i32.add
        local.get $12
        i32.const -4
        i32.and
        i32.add
        local.tee $7
        i32.le_u
        if
         local.get $5
         local.get $11
         call $~lib/rt/tlsf/removeBlock
         local.get $1
         local.get $7
         local.get $10
         i32.const 3
         i32.and
         i32.or
         i32.store
         br $folding-inner0
        end
       end
       local.get $5
       local.get $1
       local.get $2
       call $~lib/rt/tlsf/moveBlock
       local.set $1
       br $__inlined_func$~lib/rt/tlsf/reallocateBlock
      end
      local.get $5
      local.get $1
      local.get $9
      call $~lib/rt/tlsf/prepareBlock
     end
    end
    local.get $1
    i32.const 20
    i32.add
    local.tee $1
    i32.const 20
    i32.sub
    local.tee $2
    local.get $4
    i32.store offset=16
    local.get $2
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $2
    i32.store offset=8
    local.get $2
    local.get $2
    i32.load offset=8
    local.tee $4
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    local.set $5
    local.get $4
    local.get $5
    i32.store offset=4
    global.get $~lib/rt/tcms/total
    local.get $2
    i32.load
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.add
    global.set $~lib/rt/tcms/total
   end
   local.get $1
   local.get $3
   i32.add
   local.set $2
   block $~lib/util/memory/memset|inlined.0
    local.get $8
    local.get $3
    i32.sub
    local.tee $3
    i32.eqz
    br_if $~lib/util/memory/memset|inlined.0
    local.get $2
    i32.const 0
    i32.store8
    local.get $2
    local.get $3
    i32.add
    local.tee $4
    i32.const 1
    i32.sub
    i32.const 0
    i32.store8
    local.get $3
    i32.const 2
    i32.le_u
    br_if $~lib/util/memory/memset|inlined.0
    local.get $2
    i32.const 0
    i32.store8 offset=1
    local.get $2
    i32.const 0
    i32.store8 offset=2
    local.get $4
    i32.const 2
    i32.sub
    i32.const 0
    i32.store8
    local.get $4
    i32.const 3
    i32.sub
    i32.const 0
    i32.store8
    local.get $3
    i32.const 6
    i32.le_u
    br_if $~lib/util/memory/memset|inlined.0
    local.get $2
    i32.const 0
    i32.store8 offset=3
    local.get $4
    i32.const 4
    i32.sub
    i32.const 0
    i32.store8
    local.get $3
    i32.const 8
    i32.le_u
    br_if $~lib/util/memory/memset|inlined.0
    local.get $2
    i32.const 0
    local.get $2
    i32.sub
    i32.const 3
    i32.and
    local.tee $4
    i32.add
    local.tee $2
    i32.const 0
    i32.store
    local.get $2
    local.get $3
    local.get $4
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
   local.get $1
   local.get $6
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $8
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $assembly/gltf-renderer/glTFAddAccessor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32)
  (local $7 i32)
  i32.const 28
  i32.const 4
  call $~lib/rt/tcms/__new
  local.tee $7
  i32.const 0
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $7
  i32.const 0
  i32.store offset=12
  local.get $7
  i32.const 5
  i32.const 1632
  call $~lib/rt/__newArray
  i32.store offset=16
  local.get $7
  i32.const 5
  i32.const 1664
  call $~lib/rt/__newArray
  i32.store offset=20
  local.get $7
  i32.const 1312
  i32.store offset=24
  local.get $7
  local.get $0
  i32.store
  local.get $7
  local.get $1
  i32.store offset=4
  local.get $7
  local.get $2
  i32.store offset=8
  local.get $7
  local.get $3
  i32.store offset=12
  local.get $7
  local.get $4
  i32.store offset=24
  local.get $7
  local.get $5
  i32.store offset=16
  local.get $7
  local.get $6
  i32.store offset=16
  global.get $assembly/gltf-renderer/gltf
  i32.load
  local.get $7
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $assembly/gltf-renderer/glTFAddBufferView (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  i32.const 16
  i32.const 8
  call $~lib/rt/tcms/__new
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $4
  i32.const 0
  i32.store offset=12
  local.get $4
  local.get $0
  i32.store
  local.get $4
  local.get $1
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $3
  i32.store offset=12
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=8
  local.get $4
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $assembly/gltf-renderer/glTFAddBuffer (param $0 i32)
  (local $1 i32)
  i32.const 8
  i32.const 10
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 1312
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=12
  local.get $1
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $assembly/gltf-renderer/glTFAddImage
  (local $0 i32)
  i32.const 4
  i32.const 12
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.const 1312
  i32.store
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=16
  local.get $0
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $assembly/gltf-renderer/glTFAddMaterial (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 8
  i32.const 14
  call $~lib/rt/tcms/__new
  local.tee $3
  i32.const 1312
  i32.store
  i32.const 8
  i32.const 15
  call $~lib/rt/tcms/__new
  local.set $4
  i32.const 4
  i32.const 16
  call $~lib/rt/tcms/__new
  local.tee $5
  i32.const 0
  i32.store
  local.get $4
  local.get $5
  i32.store
  i32.const 4
  i32.const 16
  call $~lib/rt/tcms/__new
  local.tee $5
  i32.const 0
  i32.store
  local.get $4
  local.get $5
  i32.store offset=4
  local.get $3
  local.get $4
  i32.store offset=4
  local.get $3
  local.get $0
  i32.store
  local.get $3
  i32.load offset=4
  i32.load
  local.get $1
  i32.store
  local.get $3
  i32.load offset=4
  i32.load offset=4
  local.get $2
  i32.store
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=20
  local.get $3
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $assembly/gltf-renderer/glTFAddMesh (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 18
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 1312
  i32.store
  local.get $1
  i32.const 21
  i32.const 1792
  call $~lib/rt/__newArray
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=24
  local.get $1
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
 )
 (func $assembly/gltf-renderer/glTFAddMeshPrimitive (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (result i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 16
  i32.const 19
  call $~lib/rt/tcms/__new
  local.set $8
  i32.const 16
  i32.const 20
  call $~lib/rt/tcms/__new
  local.tee $9
  i32.const 0
  i32.store
  local.get $9
  i32.const 0
  i32.store offset=4
  local.get $9
  i32.const 0
  i32.store offset=8
  local.get $9
  i32.const 0
  i32.store offset=12
  local.get $8
  local.get $9
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=4
  local.get $8
  i32.const 0
  i32.store offset=8
  local.get $8
  i32.const 0
  i32.store offset=12
  local.get $8
  i32.load
  local.get $1
  i32.store
  local.get $8
  i32.load
  local.get $2
  i32.store offset=4
  local.get $8
  i32.load
  local.get $3
  i32.store offset=8
  local.get $8
  i32.load
  local.get $4
  i32.store offset=12
  local.get $8
  local.get $5
  i32.store offset=4
  local.get $8
  local.get $6
  i32.store offset=8
  local.get $8
  local.get $7
  i32.store offset=12
  local.get $0
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=24
  local.tee $1
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1824
   i32.const 1744
   i32.const 106
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 1888
   i32.const 1744
   i32.const 110
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $8
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
 )
 (func $assembly/gltf-renderer/glTFAddNode (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  i32.const 23
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 1312
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=28
  local.get $2
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $assembly/gltf-renderer/glTFAddSampler
  (local $0 i32)
  i32.const 0
  i32.const 25
  call $~lib/rt/tcms/__new
  local.set $0
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=32
  local.get $0
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $assembly/gltf-renderer/glTFAddScene (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  i32.const 27
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 1312
  i32.store
  local.get $2
  i32.const 5
  i32.const 2016
  call $~lib/rt/__newArray
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=40
  local.get $2
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $assembly/gltf-renderer/glTFAddTexture (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  i32.const 29
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=44
  local.get $2
  call $~lib/array/Array<assembly/gltf-renderer/GLTFAccessor>#push
  drop
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 2288
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  local.tee $3
  select
  local.tee $1
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $1
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $1
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $1
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $1
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.get $3
  i32.add
  local.tee $0
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tcms/__new
  local.tee $4
  local.set $2
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $2
    local.get $0
    i32.const 4
    i32.sub
    local.tee $0
    i32.const 1
    i32.shl
    i32.add
    local.get $5
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 2300
    i32.add
    i64.load32_u
    local.get $5
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 2300
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $2
   local.get $0
   i32.const 2
   i32.sub
   local.tee $0
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 2300
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   local.get $0
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 2300
   i32.add
   i32.load
   i32.store
  else
   local.get $2
   local.get $0
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
  local.get $3
  if
   local.get $4
   i32.const 45
   i32.store16
  end
  local.get $4
 )
 (func $assembly/gltf-renderer/main
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 2048
  call $assembly/gltf-renderer/console.log
  global.get $assembly/gltf-renderer/gltf
  local.tee $0
  i32.load offset=4
  i32.load offset=4
  local.tee $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $1
  local.get $0
  i32.load offset=4
  i32.load
  local.tee $3
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 1
   call $~lib/rt/tcms/__new
   local.tee $0
   local.get $2
   local.get $1
   call $~lib/memory/memory.copy
   local.get $0
   local.get $1
   i32.add
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
   local.get $0
  else
   i32.const 1312
  end
  call $assembly/gltf-renderer/console.log
  global.get $assembly/gltf-renderer/gltf
  i32.load
  i32.load offset=12
  call $~lib/util/number/itoa32
  call $assembly/gltf-renderer/console.log
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=8
  i32.load offset=12
  call $~lib/util/number/itoa32
  call $assembly/gltf-renderer/console.log
  global.get $assembly/gltf-renderer/gltf
  i32.load offset=12
  i32.load offset=12
  call $~lib/util/number/itoa32
  call $assembly/gltf-renderer/console.log
 )
 (func $~lib/rt/tcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.get $0
   i32.const 4308
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 101
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 105
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 3872
    i32.const 1120
    i32.const 181
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/tcms/Object#unlink
   global.get $~lib/rt/tcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/tcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 3968
   i32.const 1120
   i32.const 195
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tcms/Object#unlink
  global.get $~lib/rt/tcms/fromSpace
  local.tee $2
  i32.load offset=8
  local.set $1
  local.get $0
  local.get $2
  global.get $~lib/rt/tcms/white
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/tcms/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $assembly/gltf-renderer/gltf
  local.tee $1
  if
   local.get $1
   call $~lib/rt/tcms/__visit
  end
  i32.const 1824
  call $~lib/rt/tcms/__visit
  i32.const 1696
  call $~lib/rt/tcms/__visit
  i32.const 1888
  call $~lib/rt/tcms/__visit
  i32.const 1056
  call $~lib/rt/tcms/__visit
  i32.const 3872
  call $~lib/rt/tcms/__visit
  i32.const 3968
  call $~lib/rt/tcms/__visit
  i32.const 2720
  call $~lib/rt/tcms/__visit
  i32.const 3776
  call $~lib/rt/tcms/__visit
  global.get $~lib/rt/tcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 213
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.set $4
  global.get $~lib/rt/tcms/toSpace
  local.tee $5
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|1
   local.get $0
   local.get $5
   i32.ne
   if
    local.get $4
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 223
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/fromSpace
  local.tee $2
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|2
   local.get $0
   local.get $2
   i32.ne
   if
    global.get $~lib/rt/tcms/white
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 232
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $0
    i32.const 4308
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/tcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/tcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $3
     i32.const 4308
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $3
      call $~lib/rt/tlsf/checkUsedBlock
      local.tee $3
      local.get $3
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $3
      call $~lib/rt/tlsf/insertBlock
     end
    end
    local.set $0
    br $while-continue|2
   end
  end
  local.get $2
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $2
  i32.store offset=8
  local.get $5
  global.set $~lib/rt/tcms/fromSpace
  local.get $2
  global.set $~lib/rt/tcms/toSpace
  local.get $4
  global.set $~lib/rt/tcms/white
 )
 (func $~lib/rt/tcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/tcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/tcms/Object#unlink
   global.get $~lib/rt/tcms/toSpace
   local.tee $2
   i32.load offset=8
   local.set $1
   local.get $0
   local.get $2
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $0
   local.get $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner4
   block $folding-inner3
    block $folding-inner2
     block $folding-inner1
      block $folding-inner0
       block $invalid
        block $assembly/gltf-renderer/GLTFTexture
         block $assembly/gltf-renderer/GLTFSampler
          block $assembly/gltf-renderer/GLTFMeshPrimitiveAttributes
           block $assembly/gltf-renderer/GLTFMaterialpbrMetallicRoughnessTexture
            block $assembly/gltf-renderer/GLTFBufferView
             block $assembly/gltf-renderer/GLTFAccessor
              block $assembly/gltf-renderer/GLTF
               block $~lib/string/String
                block $~lib/arraybuffer/ArrayBuffer
                 local.get $0
                 i32.const 8
                 i32.sub
                 i32.load
                 br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $assembly/gltf-renderer/GLTF $assembly/gltf-renderer/GLTFAccessor $folding-inner1 $folding-inner2 $folding-inner3 $assembly/gltf-renderer/GLTFBufferView $folding-inner2 $folding-inner4 $folding-inner2 $folding-inner0 $folding-inner2 $folding-inner3 $folding-inner3 $assembly/gltf-renderer/GLTFMaterialpbrMetallicRoughnessTexture $folding-inner2 $folding-inner3 $folding-inner0 $assembly/gltf-renderer/GLTFMeshPrimitiveAttributes $folding-inner2 $folding-inner2 $folding-inner4 $folding-inner2 $assembly/gltf-renderer/GLTFSampler $folding-inner2 $folding-inner3 $folding-inner2 $assembly/gltf-renderer/GLTFTexture $folding-inner2 $folding-inner1 $invalid
                end
                return
               end
               return
              end
              local.get $0
              i32.load
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=4
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=8
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=12
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=16
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=20
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=24
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=28
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=32
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=40
              local.tee $1
              if
               local.get $1
               call $~lib/rt/tcms/__visit
              end
              local.get $0
              i32.load offset=44
              local.tee $0
              if
               local.get $0
               call $~lib/rt/tcms/__visit
              end
              return
             end
             local.get $0
             i32.load offset=16
             local.tee $1
             if
              local.get $1
              call $~lib/rt/tcms/__visit
             end
             local.get $0
             i32.load offset=20
             local.tee $1
             if
              local.get $1
              call $~lib/rt/tcms/__visit
             end
             local.get $0
             i32.load offset=24
             local.tee $0
             if
              local.get $0
              call $~lib/rt/tcms/__visit
             end
             return
            end
            return
           end
           return
          end
          return
         end
         return
        end
        return
       end
       unreachable
      end
      local.get $0
      i32.load
      local.tee $0
      if
       local.get $0
       call $~lib/rt/tcms/__visit
      end
      return
     end
     local.get $0
     i32.load
     call $~lib/rt/tcms/__visit
     return
    end
    local.get $0
    i32.load offset=4
    local.tee $1
    local.get $0
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.add
    local.set $2
    loop $while-continue|0
     local.get $1
     local.get $2
     i32.lt_u
     if
      local.get $1
      i32.load
      local.tee $3
      if
       local.get $3
       call $~lib/rt/tcms/__visit
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $0
    i32.load
    call $~lib/rt/tcms/__visit
    return
   end
   local.get $0
   i32.load
   local.tee $1
   if
    local.get $1
    call $~lib/rt/tcms/__visit
   end
   local.get $0
   i32.load offset=4
   local.tee $0
   if
    local.get $0
    call $~lib/rt/tcms/__visit
   end
   return
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  if
   local.get $0
   call $~lib/rt/tcms/__visit
  end
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  i32.const 1236
  i32.const 1232
  i32.store
  i32.const 1240
  i32.const 1232
  i32.store
  i32.const 1232
  global.set $~lib/rt/tcms/fromSpace
  i32.const 48
  i32.const 3
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.const 6
  i32.const 1280
  call $~lib/rt/__newArray
  i32.store
  i32.const 8
  i32.const 7
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 1312
  i32.store
  local.get $1
  i32.const 1312
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 9
  i32.const 1344
  call $~lib/rt/__newArray
  i32.store offset=8
  local.get $0
  i32.const 11
  i32.const 1376
  call $~lib/rt/__newArray
  i32.store offset=12
  local.get $0
  i32.const 13
  i32.const 1408
  call $~lib/rt/__newArray
  i32.store offset=16
  local.get $0
  i32.const 17
  i32.const 1440
  call $~lib/rt/__newArray
  i32.store offset=20
  local.get $0
  i32.const 22
  i32.const 1472
  call $~lib/rt/__newArray
  i32.store offset=24
  local.get $0
  i32.const 24
  i32.const 1504
  call $~lib/rt/__newArray
  i32.store offset=28
  local.get $0
  i32.const 26
  i32.const 1536
  call $~lib/rt/__newArray
  i32.store offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $0
  i32.const 28
  i32.const 1568
  call $~lib/rt/__newArray
  i32.store offset=40
  local.get $0
  i32.const 30
  i32.const 1600
  call $~lib/rt/__newArray
  i32.store offset=44
  local.get $0
  global.set $assembly/gltf-renderer/gltf
  i32.const 3924
  i32.const 3920
  i32.store
  i32.const 3928
  i32.const 3920
  i32.store
  i32.const 3920
  global.set $~lib/rt/tcms/pinSpace
  i32.const 4020
  i32.const 4016
  i32.store
  i32.const 4024
  i32.const 4016
  i32.store
  i32.const 4016
  global.set $~lib/rt/tcms/toSpace
 )
 ;; custom section "as-bind_bindings", size 1271, contents: "{\"typeIds\":{\"~lib/string/String\":{\"id\":1,\"byteSize\":0},\"~lib/array/Array<u32>\":{\"id\":5,\"byteSize\":16}},\"importedFunctions\":{\"gltf-renderer\":{\"log\":{\"returnType\":\"void\",\"parameters\":[\"~lib/string/String\"]}}},\"exportedFunctions\":{\"glTFSetAsset\":{\"returnType\":\"void\",\"parameters\":[\"~lib/string/String\",\"~lib/string/String\"]},\"glTFAddAccessor\":{\"returnType\":\"void\",\"parameters\":[\"u32\",\"u32\",\"u32\",\"u32\",\"~lib/string/String\",\"~lib/array/Array<u32>\",\"~lib/array/Array<u32>\"]},\"glTFAddBufferView\":{\"returnType\":\"void\",\"parameters\":[\"u32\",\"u32\",\"u32\",\"u32\"]},\"glTFAddBuffer\":{\"returnType\":\"void\",\"parameters\":[\"u32\"]},\"glTFAddImage\":{\"returnType\":\"void\",\"parameters\":[]},\"glTFAddMaterial\":{\"returnType\":\"void\",\"parameters\":[\"~lib/string/String\",\"u32\",\"u32\"]},\"glTFAddMesh\":{\"returnType\":\"u32\",\"parameters\":[\"~lib/string/String\"]},\"glTFAddMeshPrimitive\":{\"returnType\":\"u32\",\"parameters\":[\"u32\",\"u32\",\"u32\",\"u32\",\"u32\",\"u32\",\"u32\",\"u32\"]},\"glTFAddNode\":{\"returnType\":\"void\",\"parameters\":[\"~lib/string/String\",\"u32\"]},\"glTFAddSampler\":{\"returnType\":\"void\",\"parameters\":[]},\"glTFAddScene\":{\"returnType\":\"void\",\"parameters\":[\"~lib/string/String\",\"~lib/array/Array<u32>\"]},\"glTFAddTexture\":{\"returnType\":\"void\",\"parameters\":[\"u32\",\"u32\"]},\"main\":{\"returnType\":\"void\",\"parameters\":[]}}}"
)
