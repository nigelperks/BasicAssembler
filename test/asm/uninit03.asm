; Attempt init, uninit in same segment.

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN
	ORG	100h
start:
	mov	ax, [_fred]
	mov	[_bill], ax
	int	20h

_fred	dw	1234h
_bill	dw	?

	ENDS	MAIN

