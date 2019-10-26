#!/bin/bash

echo "Compiling NASM"
nasm -f bin boot_sect_segmentation.asm -o boot_sect_segmentation.bin

echo "Running file on emulator"
qemu-system-x86_64 boot_sect_segmentation.bin