const fs = require("fs");
const loader = require("@assemblyscript/loader");
const imports = { /* imports go here */ };
// const wasmModule = loader.instantiateSync(fs.readFileSync(__dirname + "/build/optimized.wasm"), imports);
const wasmModule = loader.instantiateSync(fs.readFileSync(__dirname + "/build/untouched.wasm"), imports);
module.exports = wasmModule.exports;
