global _start

section .data
text_mes: db "welcome to NASM", 0xA

section .text
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, text_mes
    mov rdx, 16
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
