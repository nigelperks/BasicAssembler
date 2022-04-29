; Test alignment of individual data items under resize pass not making changes

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN
	ORG	100h
start:
	int	20h
	jmp	_over	; guess 2 bytes, finally 3 bytes
	ALIGN	4	; guess 0 bytes, finally 3 bytes of padding
_val	DW	1234h
	ALIGN	16
_over:	mov	di, OFFSET _val
	int	20h

	ENDS	MAIN

	END	start
