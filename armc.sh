#!/bin/bash

# Usage: sh armc.sh <file w/o ext>
# Example:
# touch hello.asm
# (edit hello.asm)
# sh armc.sh hello
arm-linux-gnueabi-as $1.asm -o $1.o
arm-linux-gnueabi-gcc-11 $1.o -o $1.elf -nostdlib
