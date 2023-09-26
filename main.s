org 0x7c00

mov ax, 0				; segments setup
mov ds, ax
mov es, ax
mov ss, ax				; setup stack
mov sp, 0x7c00			; stack will grow from 0x7c00

include "macros.s"

start:
	print welcome
	jmp stop

; STD
include "std/print.s"

welcome db "Kon kon Fokkusu!", 0

stop:
	hlt

times 510-($-$$) db 0
dw 0xaa55
