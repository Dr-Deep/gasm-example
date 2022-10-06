    .global _start

    .text

_start:
    mov $60, %rax # exit
    mov $0, %rdi # return code 0

    syscall
