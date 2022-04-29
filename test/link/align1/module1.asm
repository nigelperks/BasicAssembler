; Attempt to combine public segment portion of stricter alignment with looser

	IDEAL

	ASSUME	CS:MAIN,DS:DATA,ES:DATA,SS:DATA

	SEGMENT	MAIN
	ENDS	MAIN

	SEGMENT	DATA PUBLIC WORD
	EXTRN	_b1:WORD
_a1	DW	1234h
	ENDS	DATA

	SEGMENT	MAIN
	ORG	100h
start:
	mov	ax, [_a1]
	mov	dx, [_b1]
	int	20h
	ENDS	MAIN

	END	start
