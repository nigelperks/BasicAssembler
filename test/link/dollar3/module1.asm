	IDEAL

	SEGMENT	SEG1 PUBLIC
	ASSUME	CS:SEG1
	ORG	100h
start:
	mov	ax, SEG $
	dw	SEG $
	ENDS	SEG1

	END	start
