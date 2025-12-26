#!/usr/bin/env bash
set -u

/home/roland/circt-nix/result/bin/circt-opt -verify-each -flatten-memref $1
rc=$?

# interesting = failure/crash
if [ $rc -ne 0 ]; then
  exit 1
else
  exit 0
fi
