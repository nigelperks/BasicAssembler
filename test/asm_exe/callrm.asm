	IDEAL

	SEGMENT	SEG1 PUBLIC

	ASSUME	CS: SEG1, DS: SEG1

start:
	call	[word loc1]
	call	[dword loc2]
	int	20h

loc1	dw	0
loc2	dd	0

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
