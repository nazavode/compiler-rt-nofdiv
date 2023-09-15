# -mno-fdiv support from llvm-project/compiler-rt

In order to support [`-mno-fdiv`](https://gcc.gnu.org/onlinedocs/gcc/RISC-V-Options.html#index-mfdiv) targets,
the following runtime symbols are needed:

* `__divsf3`, emulated single precision floating point division
* `__divdf3`, emulated double precision floating point division

This repo extracts the implementations for the symbols above from
[`llvm-project/compiler-rt`](https://github.com/llvm/llvm-project/tree/main/compiler-rt).
