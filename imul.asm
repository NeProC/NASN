section .text
global _start

_start:
    mov rbx, 6
    imul rbx, 4

    mov rdi, rbx
    mov rax, 60
    syscall

