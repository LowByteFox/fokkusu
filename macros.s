macro putchar c
{
	mov al, c
	mov ah, 0x0e

	int 0x10
}

macro print str
{
	mov si, str
	call _print
}
