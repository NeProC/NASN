global _start
section .text

_start:
    mov rcx, 2
    mov rdx, 2
    cmp rcx, rdx

    mov rcx, 8
    mov rdx,16

    cmovne rdi, rcx
    cmove rdi, rdx

    mov rax, 60
    syscall
