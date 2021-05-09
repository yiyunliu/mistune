#!/usr/bin/env fish
cython -3 run_mistune2.py (fd .  './mistune' --extension=py -E '__init__.*')
cython_freeze run_mistune2.c (fd .  './mistune' --extension=c -E '__init__.*') > mistune_test.c
export CC=wllvm
$CC ($PYTHONPREFIX/bin/python3-config --embed --cflags | sd '\s+' '\n' | rg '^\S+$') -O0 -c run_mistune2.c mistune_test.c (fd .  './mistune' --extension=c -E '__init__.*')

$CC ($PYTHONPREFIX/bin/python3-config --embed --ldflags | sd '\s+' '\n' | rg '^\S+$') (fd   --extension=o -E '__init__.*') -o mistune_test
