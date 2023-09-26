_print:
	lodsb			; get byte from SI

	or al, al
	jz .done		; get out on 0

	mov ah, 0x0e

	int 0x10
	jmp _print

.done:
	ret
