	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1

	ORG	100h

start:
	jmp	over	; force resize pass

	; source: SI
	; destination: AL

	lods	[byte si]
	lods	[byte ds:si]
	lods	[byte es:si]
	lods	[byte ss:si]
	lods	[byte cs:si]

	lods	[word si]
	lods	[word ds:si]
	lods	[word es:si]
	lods	[word ss:si]
	lods	[word cs:si]

over:
	int	20h

	ENDS	SEG1

	END	start
