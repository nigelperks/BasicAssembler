; Test 286 privileged (protected mode)

	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
	P286
start:
	jmp	quit	; force resizing pass

	arpl	[word bp+di-8], dx
	clts
	lar	cx, [bx+1200h]
	lgdt	[fword si]
	sgdt	[fword di]
	lidt	[fword 1234h]
	sidt	[fword bp+si]
	lldt	[word 5678h]
	lldt	ax
	sldt	ax
	sldt	[word di]
	lmsw	cx
	lmsw	[word bp-8]
	smsw	sp
	smsw	[word 0FACEh]
	lsl	si, [bx+di]
	ltr	bx
	ltr	[word si+12]
	str	ax
	str	[word 1234h]
	verr	dx
	verr	[word di]
	verw	ax
	verw	[word bx+2000h]

quit:
	int	20h
	ENDS	MAIN
	END	start
