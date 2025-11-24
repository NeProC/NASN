section .data
    num dq 123

section .text
global _start

_start:
    mov rax, [num]
    mov rbx, 456
    mov [num], rbx

    mov rax, 60
    mov rdi, rax 
    syscall
