section .data

    mensaje:            db 'Hello, world', 10
    mensaje_longitud:   equ $-mensaje

section .bss



section .text

    global _start

_start:

    mov edx, mensaje_longitud ; longitud de texto
    mov ecx, mensaje   ; texto
    mov ebx, 1         ; salida estándar (stdout)
    mov eax, 4         ; llamada al sistema (sys_write)
    int 0x80           ; llamada al kernel

    mov ebx, 0         ; código de error 0 (éxito)
    mov eax, 1         ; llamada al sistema (sys_exit)
    int 0x80           ; llamada al kernel
