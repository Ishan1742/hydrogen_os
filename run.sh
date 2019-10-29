#!/bin/bash

echo "Compiling NASM"
nasm -f bin 32bit-main.asm -o 32bit-main.bin

echo "Running file on emulator"
qemu-system-x86_64 32bit-main.bin