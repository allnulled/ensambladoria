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
    longitud equ $ - mensaje

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 
; 
; Inicio sección .text {
;     Defino global _start.
; }.
; 
; Inicio bloque _start {
;     Asigno registro EDX como longitud.
;     Asigno registro ECX como mensaje.
;     Asigno registro EBX como 1.
;     Asigno registro EAX como 4. // opcode: sys_write
;     Interrumpo con 0x80.
;     Asigno registro EBX como 0.
;     Asigno registro EAX como 1.
;     Interrumpo con 0x80.
; }.
; 
; Inicio sección .data {
;     Defino byte mensaje como "Hello world", 10.
;     Igualo longitud como $ -mensaje.
; }.
; 