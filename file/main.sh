#!/bin/bash
set -e  # dừng khi có lỗi

nasm -f elf64 main.asm
ld -o main main.o
./main
