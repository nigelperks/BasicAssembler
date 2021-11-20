	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1

	ORG	100h
start:
	jmp	over	; force resize pass
	finit
	fninit
over:

	ENDS	SEG1

	END	start
