global _start
section .text

_start:
    mov rcx, 10
    mov rdx, 12
    sub rcx, rdx
    mov rdi, rcx

    mov rax, 60
    syscall
