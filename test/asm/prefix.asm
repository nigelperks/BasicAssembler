	; Generate data segment override and instruction "prefix" WAIT
	; Test that WAIT is generated first.

	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1

	ORG	100H

start:
	FBLD	[TBYTE num]

num	DT	0

	ENDS	SEG1

	END	start
