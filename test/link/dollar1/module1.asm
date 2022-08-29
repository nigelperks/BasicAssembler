	IDEAL

	SEGMENT	SEG1 PUBLIC
	ASSUME	CS:SEG1
	ORG	100h
start:
	jmp	$
	mov	ax, OFFSET $
	dw	$
	dw	OFFSET $
	ENDS	SEG1

	END	start
