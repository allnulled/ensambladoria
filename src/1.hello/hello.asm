section .text
    global _start

_start:
    mov edx, longitud
    mov ecx, mensaje
    mov ebx, 1
    mov eax, 4      ; llamada al sistema (sys_write)
    int 0x80        ; para llamar al kernel

    mov ebx, 0
    mov eax, 1      ; llamada al sistema (sys_exit)
    int 0x80

section .data
    mensaje db "Hello, world!", 0xa     ; 0xa es lo mismo que 10
    longitud equ $ -mensaje


