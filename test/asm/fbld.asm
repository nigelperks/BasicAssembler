; BCD 8087 instruction format

	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1, DS:SEG1, ES:SEG1, SS:SEG1

	ORG	100H

start:
	FBLD	[TBYTE num]
	FBLD	[TBYTE SI]
	FBLD	[TBYTE BX]
	FBLD	[TBYTE BP+DI+40h]

num	DT	0

	ENDS	SEG1

	END	start
