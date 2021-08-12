(module
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $assembly/base64/encodingsCodePoint (mut i32) (i32.const 0))
 (global $assembly/base64/tailCodePoint (mut i32) (i32.const 0))
 (global $assembly/base64/a (mut i32) (i32.const 0))
 (global $assembly/base64/b (mut i32) (i32.const 0))
 (global $assembly/base64/c (mut i32) (i32.const 0))
 (global $assembly/base64/d (mut i32) (i32.const 0))
 (global $assembly/base64/e (mut i32) (i32.const 0))
 (global $assembly/base64/chunk (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 4176))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\02\00\00\00A")
 (data (i32.const 1068) "\1c")
 (data (i32.const 1080) "\01\00\00\00\02\00\00\00B")
 (data (i32.const 1100) "\1c")
 (data (i32.const 1112) "\01\00\00\00\02\00\00\00C")
 (data (i32.const 1132) "\1c")
 (data (i32.const 1144) "\01\00\00\00\02\00\00\00D")
 (data (i32.const 1164) "\1c")
 (data (i32.const 1176) "\01\00\00\00\02\00\00\00E")
 (data (i32.const 1196) "\1c")
 (data (i32.const 1208) "\01\00\00\00\02\00\00\00F")
 (data (i32.const 1228) "\1c")
 (data (i32.const 1240) "\01\00\00\00\02\00\00\00G")
 (data (i32.const 1260) "\1c")
 (data (i32.const 1272) "\01\00\00\00\02\00\00\00H")
 (data (i32.const 1292) "\1c")
 (data (i32.const 1304) "\01\00\00\00\02\00\00\00I")
 (data (i32.const 1324) "\1c")
 (data (i32.const 1336) "\01\00\00\00\02\00\00\00J")
 (data (i32.const 1356) "\1c")
 (data (i32.const 1368) "\01\00\00\00\02\00\00\00K")
 (data (i32.const 1388) "\1c")
 (data (i32.const 1400) "\01\00\00\00\02\00\00\00L")
 (data (i32.const 1420) "\1c")
 (data (i32.const 1432) "\01\00\00\00\02\00\00\00M")
 (data (i32.const 1452) "\1c")
 (data (i32.const 1464) "\01\00\00\00\02\00\00\00N")
 (data (i32.const 1484) "\1c")
 (data (i32.const 1496) "\01\00\00\00\02\00\00\00O")
 (data (i32.const 1516) "\1c")
 (data (i32.const 1528) "\01\00\00\00\02\00\00\00P")
 (data (i32.const 1548) "\1c")
 (data (i32.const 1560) "\01\00\00\00\02\00\00\00Q")
 (data (i32.const 1580) "\1c")
 (data (i32.const 1592) "\01\00\00\00\02\00\00\00R")
 (data (i32.const 1612) "\1c")
 (data (i32.const 1624) "\01\00\00\00\02\00\00\00S")
 (data (i32.const 1644) "\1c")
 (data (i32.const 1656) "\01\00\00\00\02\00\00\00T")
 (data (i32.const 1676) "\1c")
 (data (i32.const 1688) "\01\00\00\00\02\00\00\00U")
 (data (i32.const 1708) "\1c")
 (data (i32.const 1720) "\01\00\00\00\02\00\00\00V")
 (data (i32.const 1740) "\1c")
 (data (i32.const 1752) "\01\00\00\00\02\00\00\00W")
 (data (i32.const 1772) "\1c")
 (data (i32.const 1784) "\01\00\00\00\02\00\00\00X")
 (data (i32.const 1804) "\1c")
 (data (i32.const 1816) "\01\00\00\00\02\00\00\00Y")
 (data (i32.const 1836) "\1c")
 (data (i32.const 1848) "\01\00\00\00\02\00\00\00Z")
 (data (i32.const 1868) "\1c")
 (data (i32.const 1880) "\01\00\00\00\02\00\00\00a")
 (data (i32.const 1900) "\1c")
 (data (i32.const 1912) "\01\00\00\00\02\00\00\00b")
 (data (i32.const 1932) "\1c")
 (data (i32.const 1944) "\01\00\00\00\02\00\00\00c")
 (data (i32.const 1964) "\1c")
 (data (i32.const 1976) "\01\00\00\00\02\00\00\00d")
 (data (i32.const 1996) "\1c")
 (data (i32.const 2008) "\01\00\00\00\02\00\00\00e")
 (data (i32.const 2028) "\1c")
 (data (i32.const 2040) "\01\00\00\00\02\00\00\00f")
 (data (i32.const 2060) "\1c")
 (data (i32.const 2072) "\01\00\00\00\02\00\00\00g")
 (data (i32.const 2092) "\1c")
 (data (i32.const 2104) "\01\00\00\00\02\00\00\00h")
 (data (i32.const 2124) "\1c")
 (data (i32.const 2136) "\01\00\00\00\02\00\00\00i")
 (data (i32.const 2156) "\1c")
 (data (i32.const 2168) "\01\00\00\00\02\00\00\00j")
 (data (i32.const 2188) "\1c")
 (data (i32.const 2200) "\01\00\00\00\02\00\00\00k")
 (data (i32.const 2220) "\1c")
 (data (i32.const 2232) "\01\00\00\00\02\00\00\00l")
 (data (i32.const 2252) "\1c")
 (data (i32.const 2264) "\01\00\00\00\02\00\00\00m")
 (data (i32.const 2284) "\1c")
 (data (i32.const 2296) "\01\00\00\00\02\00\00\00n")
 (data (i32.const 2316) "\1c")
 (data (i32.const 2328) "\01\00\00\00\02\00\00\00o")
 (data (i32.const 2348) "\1c")
 (data (i32.const 2360) "\01\00\00\00\02\00\00\00p")
 (data (i32.const 2380) "\1c")
 (data (i32.const 2392) "\01\00\00\00\02\00\00\00q")
 (data (i32.const 2412) "\1c")
 (data (i32.const 2424) "\01\00\00\00\02\00\00\00r")
 (data (i32.const 2444) "\1c")
 (data (i32.const 2456) "\01\00\00\00\02\00\00\00s")
 (data (i32.const 2476) "\1c")
 (data (i32.const 2488) "\01\00\00\00\02\00\00\00t")
 (data (i32.const 2508) "\1c")
 (data (i32.const 2520) "\01\00\00\00\02\00\00\00u")
 (data (i32.const 2540) "\1c")
 (data (i32.const 2552) "\01\00\00\00\02\00\00\00v")
 (data (i32.const 2572) "\1c")
 (data (i32.const 2584) "\01\00\00\00\02\00\00\00w")
 (data (i32.const 2604) "\1c")
 (data (i32.const 2616) "\01\00\00\00\02\00\00\00x")
 (data (i32.const 2636) "\1c")
 (data (i32.const 2648) "\01\00\00\00\02\00\00\00y")
 (data (i32.const 2668) "\1c")
 (data (i32.const 2680) "\01\00\00\00\02\00\00\00z")
 (data (i32.const 2700) "\1c")
 (data (i32.const 2712) "\01\00\00\00\02\00\00\000")
 (data (i32.const 2732) "\1c")
 (data (i32.const 2744) "\01\00\00\00\02\00\00\001")
 (data (i32.const 2764) "\1c")
 (data (i32.const 2776) "\01\00\00\00\02\00\00\002")
 (data (i32.const 2796) "\1c")
 (data (i32.const 2808) "\01\00\00\00\02\00\00\003")
 (data (i32.const 2828) "\1c")
 (data (i32.const 2840) "\01\00\00\00\02\00\00\004")
 (data (i32.const 2860) "\1c")
 (data (i32.const 2872) "\01\00\00\00\02\00\00\005")
 (data (i32.const 2892) "\1c")
 (data (i32.const 2904) "\01\00\00\00\02\00\00\006")
 (data (i32.const 2924) "\1c")
 (data (i32.const 2936) "\01\00\00\00\02\00\00\007")
 (data (i32.const 2956) "\1c")
 (data (i32.const 2968) "\01\00\00\00\02\00\00\008")
 (data (i32.const 2988) "\1c")
 (data (i32.const 3000) "\01\00\00\00\02\00\00\009")
 (data (i32.const 3020) "\1c")
 (data (i32.const 3032) "\01\00\00\00\02\00\00\00+")
 (data (i32.const 3052) "\1c")
 (data (i32.const 3064) "\01\00\00\00\02\00\00\00/")
 (data (i32.const 3084) "\1c\01")
 (data (i32.const 3096) "\03\00\00\00\00\01\00\00 \04\00\00@\04\00\00`\04\00\00\80\04\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\00\05\00\00 \05\00\00@\05\00\00`\05\00\00\80\05\00\00\a0\05\00\00\c0\05\00\00\e0\05\00\00\00\06\00\00 \06\00\00@\06\00\00`\06\00\00\80\06\00\00\a0\06\00\00\c0\06\00\00\e0\06\00\00\00\07\00\00 \07\00\00@\07\00\00`\07\00\00\80\07\00\00\a0\07\00\00\c0\07\00\00\e0\07\00\00\00\08\00\00 \08\00\00@\08\00\00`\08\00\00\80\08\00\00\a0\08\00\00\c0\08\00\00\e0\08\00\00\00\t\00\00 \t\00\00@\t\00\00`\t\00\00\80\t\00\00\a0\t\00\00\c0\t\00\00\e0\t\00\00\00\n\00\00 \n\00\00@\n\00\00`\n\00\00\80\n\00\00\a0\n\00\00\c0\n\00\00\e0\n\00\00\00\0b\00\00 \0b\00\00@\0b\00\00`\0b\00\00\80\0b\00\00\a0\0b\00\00\c0\0b\00\00\e0\0b\00\00\00\0c")
 (data (i32.const 3372) "<")
 (data (i32.const 3384) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 3436) "<")
 (data (i32.const 3448) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 3500) "<")
 (data (i32.const 3512) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 3596) "\1c")
 (data (i32.const 3608) "\01\00\00\00\02\00\00\00=")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3640) "\01")
 (data (i32.const 3660) "<")
 (data (i32.const 3672) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 3724) "<")
 (data (i32.const 3736) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 3788) ",")
 (data (i32.const 3800) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 3836) "<")
 (data (i32.const 3848) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 3900) "L")
 (data (i32.const 3912) "\01\00\00\008\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00s\00t\00r\00i\00n\00g\00-\00s\00i\00n\00k\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 3980) "<")
 (data (i32.const 3992) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4076) "<")
 (data (i32.const 4088) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4176) "\07\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 4204) "\04A\00\00\00\00\00\00$\t")
 (data (i32.const 4228) "A\00\00\00\02")
 (export "base64ArrayBuffer" (func $assembly/base64/base64ArrayBuffer))
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
   i32.const 3520
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
   i32.const 3520
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
   i32.const 3520
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
   i32.const 3520
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
   i32.const 3520
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
    i32.const 3520
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
   i32.const 3520
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
   i32.const 3520
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
   i32.const 3520
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
   i32.const 3520
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
    i32.const 3520
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
    i32.const 3520
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
  i32.const 4240
  i32.const 0
  i32.store
  i32.const 5808
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
    i32.const 4240
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
      i32.const 4240
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
  i32.const 4240
  i32.const 5812
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 4240
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 3392
   i32.const 3520
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
   i32.const 3520
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
     i32.const 3520
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
   i32.const 3520
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
    i32.const 3520
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
   i32.const 3520
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
   i32.const 3392
   i32.const 3456
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
 (func $start:assembly/base64
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3572
  i32.const 3568
  i32.store
  i32.const 3576
  i32.const 3568
  i32.store
  i32.const 3568
  global.set $~lib/rt/tcms/fromSpace
  i32.const 256
  i32.const 4
  call $~lib/rt/tcms/__new
  local.tee $2
  block $__inlined_func$~lib/string/String#codePointAt
   i32.const 1052
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1056
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt
   i32.const 1058
   i32.load16_u
   local.tee $3
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt
   local.get $3
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $0
  i32.store
  block $__inlined_func$~lib/string/String#codePointAt0
   i32.const 1084
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt0
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1088
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt0
   i32.const 1090
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt0
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=4
  block $__inlined_func$~lib/string/String#codePointAt1
   i32.const 1116
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt1
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1120
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt1
   i32.const 1122
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt1
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=8
  block $__inlined_func$~lib/string/String#codePointAt2
   i32.const 1148
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt2
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1152
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt2
   i32.const 1154
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt2
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=12
  block $__inlined_func$~lib/string/String#codePointAt3
   i32.const 1180
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt3
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1184
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt3
   i32.const 1186
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt3
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=16
  block $__inlined_func$~lib/string/String#codePointAt4
   i32.const 1212
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt4
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1216
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt4
   i32.const 1218
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt4
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=20
  block $__inlined_func$~lib/string/String#codePointAt5
   i32.const 1244
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt5
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1248
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt5
   i32.const 1250
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt5
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=24
  block $__inlined_func$~lib/string/String#codePointAt6
   i32.const 1276
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt6
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1280
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt6
   i32.const 1282
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt6
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=28
  block $__inlined_func$~lib/string/String#codePointAt7
   i32.const 1308
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt7
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1312
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt7
   i32.const 1314
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt7
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=32
  block $__inlined_func$~lib/string/String#codePointAt8
   i32.const 1340
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt8
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1344
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt8
   i32.const 1346
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt8
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=36
  block $__inlined_func$~lib/string/String#codePointAt9
   i32.const 1372
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt9
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1376
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt9
   i32.const 1378
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt9
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=40
  block $__inlined_func$~lib/string/String#codePointAt10
   i32.const 1404
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt10
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1408
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt10
   i32.const 1410
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt10
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=44
  block $__inlined_func$~lib/string/String#codePointAt11
   i32.const 1436
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt11
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1440
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt11
   i32.const 1442
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt11
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=48
  block $__inlined_func$~lib/string/String#codePointAt12
   i32.const 1468
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt12
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1472
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt12
   i32.const 1474
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt12
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=52
  block $__inlined_func$~lib/string/String#codePointAt13
   i32.const 1500
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt13
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1504
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt13
   i32.const 1506
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt13
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=56
  block $__inlined_func$~lib/string/String#codePointAt14
   i32.const 1532
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt14
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1536
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt14
   i32.const 1538
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt14
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=60
  local.get $2
  i32.const -64
  i32.sub
  block $__inlined_func$~lib/string/String#codePointAt15
   i32.const 1564
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt15
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1568
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt15
   i32.const 1570
   i32.load16_u
   local.tee $3
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt15
   local.get $3
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $0
  i32.store
  block $__inlined_func$~lib/string/String#codePointAt16
   i32.const 1596
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt16
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1600
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt16
   i32.const 1602
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt16
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=68
  block $__inlined_func$~lib/string/String#codePointAt17
   i32.const 1628
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt17
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1632
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt17
   i32.const 1634
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt17
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=72
  block $__inlined_func$~lib/string/String#codePointAt18
   i32.const 1660
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt18
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1664
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt18
   i32.const 1666
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt18
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=76
  block $__inlined_func$~lib/string/String#codePointAt19
   i32.const 1692
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt19
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1696
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt19
   i32.const 1698
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt19
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=80
  block $__inlined_func$~lib/string/String#codePointAt20
   i32.const 1724
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt20
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1728
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt20
   i32.const 1730
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt20
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=84
  block $__inlined_func$~lib/string/String#codePointAt21
   i32.const 1756
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt21
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1760
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt21
   i32.const 1762
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt21
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=88
  block $__inlined_func$~lib/string/String#codePointAt22
   i32.const 1788
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt22
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1792
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt22
   i32.const 1794
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt22
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=92
  block $__inlined_func$~lib/string/String#codePointAt23
   i32.const 1820
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt23
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1824
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt23
   i32.const 1826
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt23
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=96
  block $__inlined_func$~lib/string/String#codePointAt24
   i32.const 1852
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt24
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1856
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt24
   i32.const 1858
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt24
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=100
  block $__inlined_func$~lib/string/String#codePointAt25
   i32.const 1884
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt25
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1888
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt25
   i32.const 1890
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt25
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=104
  block $__inlined_func$~lib/string/String#codePointAt26
   i32.const 1916
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt26
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1920
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt26
   i32.const 1922
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt26
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=108
  block $__inlined_func$~lib/string/String#codePointAt27
   i32.const 1948
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt27
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1952
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt27
   i32.const 1954
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt27
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=112
  block $__inlined_func$~lib/string/String#codePointAt28
   i32.const 1980
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt28
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 1984
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt28
   i32.const 1986
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt28
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=116
  block $__inlined_func$~lib/string/String#codePointAt29
   i32.const 2012
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt29
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2016
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt29
   i32.const 2018
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt29
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=120
  block $__inlined_func$~lib/string/String#codePointAt30
   i32.const 2044
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt30
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2048
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt30
   i32.const 2050
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt30
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=124
  block $__inlined_func$~lib/string/String#codePointAt31
   i32.const 2076
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt31
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2080
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt31
   i32.const 2082
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt31
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=128
  block $__inlined_func$~lib/string/String#codePointAt32
   i32.const 2108
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt32
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2112
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt32
   i32.const 2114
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt32
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=132
  block $__inlined_func$~lib/string/String#codePointAt33
   i32.const 2140
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt33
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2144
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt33
   i32.const 2146
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt33
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=136
  block $__inlined_func$~lib/string/String#codePointAt34
   i32.const 2172
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt34
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2176
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt34
   i32.const 2178
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt34
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=140
  block $__inlined_func$~lib/string/String#codePointAt35
   i32.const 2204
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt35
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2208
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt35
   i32.const 2210
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt35
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=144
  block $__inlined_func$~lib/string/String#codePointAt36
   i32.const 2236
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt36
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2240
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt36
   i32.const 2242
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt36
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=148
  block $__inlined_func$~lib/string/String#codePointAt37
   i32.const 2268
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt37
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2272
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt37
   i32.const 2274
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt37
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=152
  block $__inlined_func$~lib/string/String#codePointAt38
   i32.const 2300
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt38
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2304
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt38
   i32.const 2306
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt38
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=156
  block $__inlined_func$~lib/string/String#codePointAt39
   i32.const 2332
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt39
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2336
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt39
   i32.const 2338
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt39
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=160
  block $__inlined_func$~lib/string/String#codePointAt40
   i32.const 2364
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt40
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2368
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt40
   i32.const 2370
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt40
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=164
  block $__inlined_func$~lib/string/String#codePointAt41
   i32.const 2396
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt41
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2400
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt41
   i32.const 2402
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt41
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=168
  block $__inlined_func$~lib/string/String#codePointAt42
   i32.const 2428
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt42
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2432
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt42
   i32.const 2434
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt42
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=172
  block $__inlined_func$~lib/string/String#codePointAt43
   i32.const 2460
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt43
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2464
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt43
   i32.const 2466
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt43
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=176
  block $__inlined_func$~lib/string/String#codePointAt44
   i32.const 2492
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt44
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2496
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt44
   i32.const 2498
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt44
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=180
  block $__inlined_func$~lib/string/String#codePointAt45
   i32.const 2524
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt45
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2528
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt45
   i32.const 2530
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt45
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=184
  block $__inlined_func$~lib/string/String#codePointAt46
   i32.const 2556
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt46
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2560
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt46
   i32.const 2562
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt46
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=188
  block $__inlined_func$~lib/string/String#codePointAt47
   i32.const 2588
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt47
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2592
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt47
   i32.const 2594
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt47
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=192
  block $__inlined_func$~lib/string/String#codePointAt48
   i32.const 2620
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt48
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2624
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt48
   i32.const 2626
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt48
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=196
  block $__inlined_func$~lib/string/String#codePointAt49
   i32.const 2652
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt49
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2656
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt49
   i32.const 2658
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt49
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=200
  block $__inlined_func$~lib/string/String#codePointAt50
   i32.const 2684
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt50
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2688
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt50
   i32.const 2690
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt50
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=204
  block $__inlined_func$~lib/string/String#codePointAt51
   i32.const 2716
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt51
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2720
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt51
   i32.const 2722
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt51
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=208
  block $__inlined_func$~lib/string/String#codePointAt52
   i32.const 2748
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt52
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2752
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt52
   i32.const 2754
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt52
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=212
  block $__inlined_func$~lib/string/String#codePointAt53
   i32.const 2780
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt53
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2784
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt53
   i32.const 2786
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt53
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=216
  block $__inlined_func$~lib/string/String#codePointAt54
   i32.const 2812
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt54
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2816
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt54
   i32.const 2818
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt54
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=220
  block $__inlined_func$~lib/string/String#codePointAt55
   i32.const 2844
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt55
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2848
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt55
   i32.const 2850
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt55
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=224
  block $__inlined_func$~lib/string/String#codePointAt56
   i32.const 2876
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt56
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2880
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt56
   i32.const 2882
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt56
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=228
  block $__inlined_func$~lib/string/String#codePointAt57
   i32.const 2908
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt57
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2912
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt57
   i32.const 2914
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt57
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=232
  block $__inlined_func$~lib/string/String#codePointAt58
   i32.const 2940
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt58
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2944
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt58
   i32.const 2946
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt58
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=236
  block $__inlined_func$~lib/string/String#codePointAt59
   i32.const 2972
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt59
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 2976
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt59
   i32.const 2978
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt59
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=240
  block $__inlined_func$~lib/string/String#codePointAt60
   i32.const 3004
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt60
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 3008
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt60
   i32.const 3010
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt60
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=244
  block $__inlined_func$~lib/string/String#codePointAt61
   i32.const 3036
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt61
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 3040
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt61
   i32.const 3042
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt61
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=248
  block $__inlined_func$~lib/string/String#codePointAt62
   i32.const 3068
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt62
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 3072
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt62
   i32.const 3074
   i32.load16_u
   local.tee $1
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt62
   local.get $1
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $2
  local.get $0
  i32.store offset=252
  local.get $2
  global.set $assembly/base64/encodingsCodePoint
  block $__inlined_func$~lib/string/String#codePointAt63
   i32.const 3612
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/string/String#codePointAt63
   end
   i32.const 1
   local.get $0
   i32.const 1
   i32.eq
   i32.const 3616
   i32.load16_u
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   select
   br_if $__inlined_func$~lib/string/String#codePointAt63
   i32.const 3618
   i32.load16_u
   local.tee $2
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/string/String#codePointAt63
   local.get $2
   local.get $0
   i32.const 10
   i32.shl
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $0
  global.set $assembly/base64/tailCodePoint
 )
 (func $~lib/staticarray/StaticArray<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 3680
   i32.const 3856
   i32.const 113
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
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
   i32.const 3520
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
  i32.const 4236
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
 (func $~lib/as-string-sink/index/StringSink#writeCodePoint (param $0 i32) (param $1 i32)
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
   local.set $6
   local.get $2
   i32.const 20
   i32.sub
   local.set $4
   block $__inlined_func$~lib/rt/tcms/__renew
    local.get $2
    i32.const 4236
    i32.lt_u
    if
     local.get $6
     local.get $4
     i32.load offset=12
     call $~lib/rt/tcms/__new
     local.tee $3
     local.get $2
     local.get $6
     local.get $4
     i32.load offset=16
     local.tee $2
     local.get $2
     local.get $6
     i32.gt_u
     select
     call $~lib/memory/memory.copy
     br $__inlined_func$~lib/rt/tcms/__renew
    end
    local.get $6
    i32.const 1073741804
    i32.gt_u
    if
     i32.const 3392
     i32.const 3456
     i32.const 143
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/rt/tcms/total
    local.get $4
    i32.load
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.sub
    global.set $~lib/rt/tcms/total
    local.get $2
    i32.const 16
    i32.sub
    local.set $2
    local.get $6
    i32.const 16
    i32.add
    local.set $3
    global.get $~lib/rt/tlsf/ROOT
    i32.eqz
    if
     call $~lib/rt/tlsf/initialize
    end
    local.get $2
    i32.const 4236
    i32.lt_u
    if (result i32)
     global.get $~lib/rt/tlsf/ROOT
     local.get $2
     call $~lib/rt/tlsf/checkUsedBlock
     local.get $3
     call $~lib/rt/tlsf/moveBlock
    else
     block $__inlined_func$~lib/rt/tlsf/reallocateBlock (result i32)
      global.get $~lib/rt/tlsf/ROOT
      local.set $7
      local.get $2
      call $~lib/rt/tlsf/checkUsedBlock
      local.set $2
      block $folding-inner0
       local.get $3
       call $~lib/rt/tlsf/prepareSize
       local.tee $8
       local.get $2
       i32.load
       local.tee $10
       i32.const -4
       i32.and
       local.tee $11
       i32.le_u
       br_if $folding-inner0
       local.get $2
       i32.const 4
       i32.add
       local.get $2
       i32.load
       i32.const -4
       i32.and
       i32.add
       local.tee $5
       i32.load
       local.tee $4
       i32.const 1
       i32.and
       if
        local.get $8
        local.get $11
        i32.const 4
        i32.add
        local.get $4
        i32.const -4
        i32.and
        i32.add
        local.tee $4
        i32.le_u
        if
         local.get $7
         local.get $5
         call $~lib/rt/tlsf/removeBlock
         local.get $2
         local.get $4
         local.get $10
         i32.const 3
         i32.and
         i32.or
         i32.store
         br $folding-inner0
        end
       end
       local.get $7
       local.get $2
       local.get $3
       call $~lib/rt/tlsf/moveBlock
       br $__inlined_func$~lib/rt/tlsf/reallocateBlock
      end
      local.get $7
      local.get $2
      local.get $8
      call $~lib/rt/tlsf/prepareBlock
      local.get $2
     end
    end
    i32.const 20
    i32.add
    local.tee $3
    i32.const 20
    i32.sub
    local.tee $5
    local.get $6
    i32.store offset=16
    local.get $5
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $5
    i32.store offset=8
    local.get $5
    local.get $5
    i32.load offset=8
    local.tee $4
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    local.set $2
    local.get $4
    local.get $2
    i32.store offset=4
    global.get $~lib/rt/tcms/total
    local.get $5
    i32.load
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.add
    global.set $~lib/rt/tcms/total
   end
   local.get $0
   local.get $3
   i32.store
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  local.get $0
  i32.load
  i32.add
  local.set $3
  local.get $9
  if
   local.get $1
   i32.const 1114111
   i32.gt_u
   if
    i32.const 0
    i32.const 3920
    i32.const 105
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
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
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
  else
   local.get $3
   local.get $1
   i32.store16
   local.get $0
   local.get $2
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
  call $~lib/rt/tcms/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 3644
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $1
  i32.const 64
  local.get $1
  i32.const 64
  i32.gt_u
  select
  i32.const 0
  call $~lib/rt/tcms/__new
  i32.store
  local.get $1
  if
   local.get $2
   i32.load
   i32.const 3648
   local.get $1
   call $~lib/memory/memory.copy
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.add
   i32.store offset=4
  end
  local.get $0
  local.tee $1
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $0
  i32.const 12
  i32.const 6
  call $~lib/rt/tcms/__new
  local.tee $3
  local.get $1
  i32.store
  local.get $3
  local.get $0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=4
  local.get $3
  i32.load offset=8
  local.tee $0
  i32.const 3
  i32.rem_s
  local.set $1
  local.get $0
  local.get $1
  i32.sub
  local.set $5
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $3
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.add
    i32.add
    i32.load8_u
    local.get $4
    local.get $3
    i32.load offset=4
    i32.add
    i32.load8_u
    i32.const 16
    i32.shl
    local.get $3
    i32.load offset=4
    local.get $4
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
    local.tee $0
    i32.const 16515072
    i32.and
    i32.const 18
    i32.shr_u
    global.set $assembly/base64/a
    local.get $0
    i32.const 258048
    i32.and
    i32.const 12
    i32.shr_u
    global.set $assembly/base64/b
    local.get $0
    i32.const 4032
    i32.and
    i32.const 6
    i32.shr_u
    global.set $assembly/base64/c
    local.get $0
    i32.const 63
    i32.and
    global.set $assembly/base64/d
    local.get $2
    global.get $assembly/base64/encodingsCodePoint
    global.get $assembly/base64/a
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $2
    global.get $assembly/base64/encodingsCodePoint
    global.get $assembly/base64/b
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $2
    global.get $assembly/base64/encodingsCodePoint
    global.get $assembly/base64/c
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $2
    global.get $assembly/base64/encodingsCodePoint
    global.get $assembly/base64/d
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    global.get $assembly/base64/e
    i32.const 4
    i32.add
    global.set $assembly/base64/e
    local.get $4
    i32.const 3
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $5
   local.get $3
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
   local.get $2
   global.get $assembly/base64/encodingsCodePoint
   global.get $assembly/base64/a
   call $~lib/staticarray/StaticArray<i32>#__get
   call $~lib/as-string-sink/index/StringSink#writeCodePoint
   local.get $2
   global.get $assembly/base64/encodingsCodePoint
   global.get $assembly/base64/b
   call $~lib/staticarray/StaticArray<i32>#__get
   call $~lib/as-string-sink/index/StringSink#writeCodePoint
   local.get $2
   global.get $assembly/base64/tailCodePoint
   call $~lib/as-string-sink/index/StringSink#writeCodePoint
   local.get $2
   global.get $assembly/base64/tailCodePoint
   call $~lib/as-string-sink/index/StringSink#writeCodePoint
  else
   local.get $1
   i32.const 2
   i32.eq
   if
    local.get $3
    i32.load offset=4
    local.get $5
    i32.const 1
    i32.add
    i32.add
    i32.load8_u
    local.get $5
    local.get $3
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
    local.get $2
    global.get $assembly/base64/encodingsCodePoint
    global.get $assembly/base64/a
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $2
    global.get $assembly/base64/encodingsCodePoint
    global.get $assembly/base64/b
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $2
    global.get $assembly/base64/encodingsCodePoint
    global.get $assembly/base64/c
    call $~lib/staticarray/StaticArray<i32>#__get
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
    local.get $2
    global.get $assembly/base64/tailCodePoint
    call $~lib/as-string-sink/index/StringSink#writeCodePoint
   end
  end
  local.get $2
  i32.load offset=4
  local.tee $1
  if
   local.get $1
   i32.const 1
   call $~lib/rt/tcms/__new
   local.tee $0
   local.get $2
   i32.load
   local.get $1
   call $~lib/memory/memory.copy
  else
   i32.const 3648
   local.set $0
  end
  local.get $0
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
   i32.const 4236
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 3456
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
   i32.const 3456
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
    i32.const 4000
    i32.const 3456
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
   i32.const 4096
   i32.const 3456
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
  i32.const 3104
  call $~lib/rt/tcms/__visit
  global.get $assembly/base64/encodingsCodePoint
  local.tee $1
  if
   local.get $1
   call $~lib/rt/tcms/__visit
  end
  i32.const 3680
  call $~lib/rt/tcms/__visit
  i32.const 3808
  call $~lib/rt/tcms/__visit
  i32.const 3392
  call $~lib/rt/tcms/__visit
  i32.const 4000
  call $~lib/rt/tcms/__visit
  i32.const 4096
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
     i32.const 3456
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
     i32.const 3456
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
     i32.const 3456
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
    i32.const 4236
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
     i32.const 4236
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
  block $folding-inner0
   block $invalid
    block $~lib/typedarray/Uint8Array
     block $~lib/staticarray/StaticArray<i32>
      block $~lib/staticarray/StaticArray<~lib/string/String>
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $~lib/staticarray/StaticArray<~lib/string/String> $~lib/staticarray/StaticArray<i32> $folding-inner0 $~lib/typedarray/Uint8Array $invalid
        end
        return
       end
       return
      end
      local.get $0
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.add
      local.set $1
      loop $while-continue|0
       local.get $0
       local.get $1
       i32.lt_u
       if
        local.get $0
        i32.load
        local.tee $2
        if
         local.get $2
         call $~lib/rt/tcms/__visit
        end
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      return
     end
     return
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
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/tcms/__visit
  end
 )
 (func $~start
  call $start:assembly/base64
  i32.const 4052
  i32.const 4048
  i32.store
  i32.const 4056
  i32.const 4048
  i32.store
  i32.const 4048
  global.set $~lib/rt/tcms/pinSpace
  i32.const 4148
  i32.const 4144
  i32.store
  i32.const 4152
  i32.const 4144
  i32.store
  i32.const 4144
  global.set $~lib/rt/tcms/toSpace
 )
 ;; custom section "as-bind_bindings", size 256, contents: "{\"typeIds\":{\"~lib/string/String\":{\"id\":1,\"byteSize\":0},\"~lib/arraybuffer/ArrayBuffer\":{\"id\":0,\"byteSize\":0}},\"importedFunctions\":{},\"exportedFunctions\":{\"base64ArrayBuffer\":{\"returnType\":\"~lib/string/String\",\"parameters\":[\"~lib/arraybuffer/ArrayBuffer\"]}}}"
)
