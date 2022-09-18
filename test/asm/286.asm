; Test 286 non-privileged

	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
	P286N
start:
	enter	0, 0
	enter	0, 1
	enter	0, 255
	enter	1, 255
	enter	0FFFFh, 255

        leave

bounds	dw	1
	dw	8

	bound	dx, [bounds]

	pusha

	push	1234h
	push	7fh
	push	80h
	push	-1

	imul	ax, 40h
	imul	si, -3
	imul	bx, [WORD si-4], 39h
	imul	dx, [WORD 4444h], 100h

	insb
	insw

	; See 286X.asm
; 	ins	[byte di], dx
; 	ins	[word di], dx

	outsb
	outs	dx, [byte si]
	outs	dx, [byte es:si]
	outs	dx, [byte cs:si] ; override has no effect
	outs	dx, [word si]

	int	20h
	ENDS	MAIN
	END	start
