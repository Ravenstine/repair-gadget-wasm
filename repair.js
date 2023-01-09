/**
 * This file currently exists just to see whether
 * the compiled WASM actually works or not.  Not
 * meant to actually play the game yet.
 */
const wasmCode = await Deno.readFile('dist/director.wasm');
const wasmModule = new WebAssembly.Module(wasmCode);
const wasmInstance = new WebAssembly.Instance(wasmModule, {
  wasi_snapshot_preview1: {
    proc_exit(args) {
      console.log(args);
    },
    fd_close(args) {
      console.log(args);
    },
    fd_write(args) {
      console.log(args);
    },
    fd_seek(args) {
      console.log(args);
    },
  },
});
const dcr = await Deno.readFile('vendor/repair.dcr');

console.log(wasmInstance.exports.myFunction(dcr));