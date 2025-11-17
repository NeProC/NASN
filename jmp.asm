section .text
global _start

_start:
    mov al, 0xFF
    add al, 3
    jc метка_переноса
    mov rdi, 2
    jmp завершение

метка_переноса:
    mov rdi, 7

завершение:
    mov rax, 60
    syscall
