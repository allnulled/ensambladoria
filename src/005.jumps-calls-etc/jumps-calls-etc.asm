section .text
    global _start

section .data
    mensaje db "Hello, world!", 0xa     ; 0xa es lo mismo que 10
    longitud equ $ - mensaje

_print_hello_world:
    mov edx, longitud
    mov ecx, mensaje
    mov ebx, 1
    mov eax, 4      ; llamada al sistema (sys_write)
    int 0x80        ; para llamar al kernel

_exit_program:
    mov ebx, 0
    mov eax, 1      ; llamada al sistema (sys_exit)
    int 0x80

_start:
    jmp _after_start

_after_start:
    jmp _print_hello_world
    jmp _after_printing

_after_printing:
    jmp _exit_program