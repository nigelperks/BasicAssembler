	IDEAL

	SEGMENT	SEG1 PUBLIC

	ASSUME	CS: SEG1, DS: SEG1

loc1	dw	0
loc2	dd	0

start:
	; jmp distance is implied by DW, DD definitions

	call	[loc1]
	call	[loc2]
	jmp	[loc1]
	jmp	[loc2]
	int	20h

	ENDS	SEG1

	SEGMENT	SEG2 PUBLIC

	ASSUME	CS: SEG2

	db	'padding'

quit:
	dw	0

	ENDS

	SEGMENT	_STACK STACK
	DB	10h DUP (0)
	ENDS	_STACK

	END	start
