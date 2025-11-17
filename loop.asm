global _start
section .text

_start:
    mov rcx, 5
    mov rdi, 0

repeat_loop:
    add  rdi, 5
    test rdi, 10
    loopne repeat_loop

    mov rax, 60
    syscall
