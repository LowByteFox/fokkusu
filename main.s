org 0x7c00

include "macros.s"

start:
	print welcome

; STD
include "std/print.s"

; Strings
include "msgs.s"

times 510-($-$$) db 0
dw 0xaa55
