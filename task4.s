.section .bss
.global ram
.lcomm ram, 256


.section .text
.global fill_ram

fill_ram:
    mov $0x50, %rcx
    movb $0, ram(%rcx)

    mov $1, %al
    mov $0, %bl
    mov $10, %cl

    loop_start:
        add %al, %bl
        inc %al
        loop loop_start
        mov %bl, ram+0x50
        ret
.section .note.GNU-stack,"",@progbits
        