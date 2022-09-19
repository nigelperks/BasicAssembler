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
	pushaw
	popa
	popaw

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

	rcl	al, 2
	rcl	al, 07fh
	rcl	al, -80h
	rcl	[byte si], 4
	rcl	dx, 7
	rcl	[word bp-8], 10h

	rcr	dh, 3
	rcr	[byte bx+di+10h], 8
	rcr	cx, 18h
	rcr	[word bx], -4

	rol	ah, -1
	rol	[byte si-8], 0dh
	rol	bx, 3
	rol	[word 1234h], 33h

	ror	bh, 30h
	ror	[byte bx+si], 9
	ror	sp, 2
	ror	[word bp+di], 40h

	sal	al, 2
	sal	al, 07fh
	sal	al, -80h
	sal	[byte si], 4
	sal	dx, 7
	sal	[word bp-8], 10h

	sar	dh, 3
	sar	[byte bx+di+10h], 8
	sar	cx, 18h
	sar	[word bx], -4

	shl	ah, -1
	shl	[byte si-8], 0dh
	shl	bx, 3
	shl	[word 1234h], 33h

	shr	bh, 30h
	shr	[byte bx+si], 9
	shr	sp, 2
	shr	[word bp+di], 40h

	int	20h
	ENDS	MAIN
	END	start
