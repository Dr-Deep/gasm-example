#!/bin/bash

echo $1
rm -vf $1.o $1.elf
as -o $1.o $1
ld -o $1.elf $1.o
