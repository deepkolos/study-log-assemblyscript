// import { log } from 'Math';
// import { log2 } from 'Math';

const {log, log2} = Math

function asmFunc(env) {
 var memory = env.memory;
 var buffer = memory.buffer;
 memory.grow = __wasm_memory_grow;
 var HEAP8 = new Int8Array(buffer);
 var HEAP16 = new Int16Array(buffer);
 var HEAP32 = new Int32Array(buffer);
 var HEAPU8 = new Uint8Array(buffer);
 var HEAPU16 = new Uint16Array(buffer);
 var HEAPU32 = new Uint32Array(buffer);
 var HEAPF32 = new Float32Array(buffer);
 var HEAPF64 = new Float64Array(buffer);
 var Math_imul = Math.imul;
 var Math_fround = Math.fround;
 var Math_abs = Math.abs;
 var Math_clz32 = Math.clz32;
 var Math_min = Math.min;
 var Math_max = Math.max;
 var Math_floor = Math.floor;
 var Math_ceil = Math.ceil;
 var Math_trunc = Math.trunc;
 var Math_sqrt = Math.sqrt;
 var abort = env.abort;
 var nan = NaN;
 var infinity = Infinity;
 var $lib_bindings_Math_log = env.log;
 var $lib_bindings_Math_log2 = env.log2;
 var assembly_mandelbrot_NUM_COLORS = 2048;
 function assembly_mandelbrot_clamp_f64_($0, $1, $2) {
  $0 = +$0;
  $1 = +$1;
  $2 = +$2;
  return +Math_min(Math_max($0, $1), $2);
 }
 
 function assembly_mandelbrot_update($0, $1, $2) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  $2 = $2 | 0;
  var $6 = 0, $16 = 0.0, $17 = 0.0, $5 = 0, $20 = 0, $21 = 0, $13 = 0, $7 = 0.0, $11 = 0.0, $15 = 0.0, $18 = 0.0, $19 = 0.0, $23 = 0.0, $4 = 0.0, $8 = 0.0, $9 = 0.0, $10 = 0, $12 = 0, $22 = 0.0, $24 = 0.0;
  $4 = +($1 >>> 0) * (1.0 / 2.0);
  $5 = Math_imul(3, $0);
  $6 = Math_imul(4, $1);
  $7 = 10.0 / +((($5 | 0) < ($6 | 0) ? $5 : $6) | 0);
  $8 = +($0 >>> 0) * (1.0 / 1.6) * $7;
  $9 = 1.0 / +($2 >>> 0);
  $6 = 8;
  $5 = $2;
  $10 = $6 >>> 0 < $5 >>> 0 ? $6 : $5;
  $6 = 0;
  for_loop_0 : while (1) {
   $5 = $6 >>> 0 < $1 >>> 0;
   if ($5) {
    for_continue_0 : {
     $11 = (+($6 >>> 0) - $4) * $7;
     $12 = Math_imul($6, $0) << 1 | 0;
     $13 = 0;
     for_loop_1 : while (1) {
      if ($13 >>> 0 < $0 >>> 0) {
       for_continue_1 : {
        $15 = +($13 >>> 0) * $7 - $8;
        $16 = 0.0;
        $17 = 0.0;
        $20 = 0;
        while_break_2 : {
         while_continue_2 : while (1) {
          $18 = $16 * $16;
          $19 = $17 * $17;
          $21 = $18 + $19 <= 4.0;
          if ($21) {
           $17 = 2.0 * $16 * $17 + $11;
           $16 = $18 - $19 + $15;
           if ($20 >>> 0 >= $2 >>> 0) {
            break while_break_2
           }
           $20 = $20 + 1 | 0;
           continue while_continue_2;
          }
          break while_continue_2;
         };
        }
        while_continue_3 : while (1) {
         $21 = $20 >>> 0 < $10 >>> 0;
         if ($21) {
          $22 = $16 * $16 - $17 * $17 + $15;
          $17 = 2.0 * $16 * $17 + $11;
          $16 = $22;
          $20 = $20 + 1 | 0;
          continue while_continue_3;
         }
         break while_continue_3;
        };
        $21 = assembly_mandelbrot_NUM_COLORS - 1 | 0;
        $23 = $16 * $16 + $17 * $17;
        if ($23 > 1.0) {
         $24 = +$lib_bindings_Math_log2(+(.5 * +$lib_bindings_Math_log(+$23)));
         $21 = ~~(+(assembly_mandelbrot_NUM_COLORS - 1 | 0 | 0) * +assembly_mandelbrot_clamp_f64_(+((+(($20 + 1 | 0) >>> 0) - $24) * $9), +(0.0), +(1.0))) >>> 0;
        }
        HEAP16[($12 + ($13 << 1 | 0) | 0) >> 1] = $21;
       }
       $13 = $13 + 1 | 0;
       continue for_loop_1;
      }
      break for_loop_1;
     };
    }
    $6 = $6 + 1 | 0;
    continue for_loop_0;
   }
   break for_loop_0;
  };
 }
 
 function __wasm_memory_size() {
  return buffer.byteLength / 65536 | 0;
 }
 
 function __wasm_memory_grow(pagesToAdd) {
  pagesToAdd = pagesToAdd | 0;
  var oldPages = __wasm_memory_size() | 0;
  var newPages = oldPages + pagesToAdd | 0;
  if ((oldPages < newPages) && (newPages < 65536)) {
   var newBuffer = new ArrayBuffer(Math_imul(newPages, 65536));
   var newHEAP8 = new Int8Array(newBuffer);
   newHEAP8.set(HEAP8);
   HEAP8 = new Int8Array(newBuffer);
   HEAP16 = new Int16Array(newBuffer);
   HEAP32 = new Int32Array(newBuffer);
   HEAPU8 = new Uint8Array(newBuffer);
   HEAPU16 = new Uint16Array(newBuffer);
   HEAPU32 = new Uint32Array(newBuffer);
   HEAPF32 = new Float32Array(newBuffer);
   HEAPF64 = new Float64Array(newBuffer);
   buffer = newBuffer;
   memory.buffer = buffer;
  }
  return oldPages;
 }
 
 return {
  "update": assembly_mandelbrot_update, 
  "memory": Object.create(Object.prototype, {
   "grow": {
    "value": __wasm_memory_grow
   }, 
   "buffer": {
    "get": function () {
     return buffer;
    }
    
   }
  })
 };
}

var memasmFunc = new ArrayBuffer(56);
var retasmFunc = asmFunc(  { abort: function() { throw new Error('abort'); },
    log,
    log2,
    memory: { buffer : memasmFunc }
  });
export var update = retasmFunc.update;
export var memory = retasmFunc.memory;
