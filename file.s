    .global _start

.text
    _start:
        # read
        mov $0, %rax # syscall 0 : read()
        mov $0, %rdi # file handle 0 : stdin
        mov $buffer, %rsi # buffer
        mov $16, %rdx # buffer lenght
        syscall

        # write
        mov $1, %rax # syscall 1 : write()
        mov $1, %rdi # file handle 1 : stdout
        mov $buffer, %rsi # put buffer in %rsi
        mov $16, %rdx # buffer lenght
        syscall

        # exit
        mov $60, %rax # exit
        mov $0, %rdi # return code 0
        syscall

.data
    buffer:
        .ascii "                "
