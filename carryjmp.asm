global _start
section .text

_start:
    mov al, 235
    mov bl, 235
    sub al, bl     

    mov rcx, 34
    mov rdx, 56
    mov r8, 78

    cmovc rdi, rcx
    cmovnc rdi, rdx
    cmovz rdi, r8

    mov rax, 60
    syscall
