section .data
    nums dq 112, 113, 114, 115, 116
    numsLen equ $ - nums

section .text
global _start

_start:
    mov rdi, numsLen / 8
    mov rax, 60
    syscall
