	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1

	ORG	100h

start:
	jmp	over	; force resize pass

	; source: SI
	; destination: AL

	stos	[byte di]
	stos	[byte es:di]

	stos	[word di]
	stos	[word es:di]

over:
	int	20h

	ENDS	SEG1

	END	start
