section .text
global _start

_start:
    mov rdx, 7
    mov rcx, 7
    sub rdx, rcx
    jz zero
    mov rdi, 1
    jmp exit

zero:
    mov rdi, 7

exit:
    mov rax, 60
    syscall
