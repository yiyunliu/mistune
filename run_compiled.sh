#!/usr/bin/env bash
/home/alsymd/.local/klee-cupa/bin/klee  --watchdog --max-memory=5000 --max-time=1h  --posix-runtime --optimize-array=all --optimize --runtime-build=Release+Asserts --libc=uclibc --link-llvm-lib=/home/alsymd/.local/python-debug-llvm-9.x/lib/libpython3.9.so.1.0.bc /home/alsymd/scratch/cython/python-packages/mistune/mistune_test.bc
