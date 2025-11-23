%include "asm_io.inc"

segment .data
    result_msg  db "Sum of array: ", 0

segment .bss
    array       resd 100

segment .text
    global asm_main

asm_main:
    enter   0,0
    pusha

    ; Initialize array with values 1-100
    mov     ecx, 100
    mov     ebx, 0          ; array index
    mov     edx, 1          ; current value
init_loop:
    mov     [array + ebx*4], edx
    inc     ebx
    inc     edx
    loop    init_loop
    
    ; Sum the array
    xor     eax, eax        ; sum = 0
    mov     ecx, 100
    mov     ebx, 0
sum_loop:
    add     eax, [array + ebx*4]
    inc     ebx
    loop    sum_loop
    
    ; Print result
    mov     ebx, eax        ; save sum
    mov     eax, result_msg
    call    print_string
    mov     eax, ebx
    call    print_int
    call    print_nl

    popa
    mov     eax, 0
    leave
    ret
