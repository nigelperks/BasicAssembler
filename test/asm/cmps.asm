	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1

	ORG	100h

start:
	jmp	over	; force resize pass

	; operand 1: source: SI
	; operand 2: destination: ES:DI

	cmps	[byte si], [di]
	cmps	[byte ds:si], [di]
	cmps	[byte es:si], [di]
	cmps	[byte ss:si], [di]
	cmps	[byte cs:si], [di]
	cmps	[byte si], [es:di]
	cmps	[byte ds:si], [es:di]
	cmps	[byte es:si], [es:di]
	cmps	[byte ss:si], [es:di]
	cmps	[byte cs:si], [es:di]

	cmps	[si], [byte di]
	cmps	[ds:si], [byte di]
	cmps	[es:si], [byte di]
	cmps	[ss:si], [byte di]
	cmps	[cs:si], [byte di]
	cmps	[si], [byte es:di]
	cmps	[ds:si], [byte es:di]
	cmps	[es:si], [byte es:di]
	cmps	[ss:si], [byte es:di]
	cmps	[cs:si], [byte es:di]

	cmps	[byte si], [byte di]
	cmps	[byte ds:si], [byte di]
	cmps	[byte es:si], [byte di]
	cmps	[byte ss:si], [byte di]
	cmps	[byte cs:si], [byte di]
	cmps	[byte si], [byte es:di]
	cmps	[byte ds:si], [byte es:di]
	cmps	[byte es:si], [byte es:di]
	cmps	[byte ss:si], [byte es:di]
	cmps	[byte cs:si], [byte es:di]

	cmps	[word si], [di]
	cmps	[word ds:si], [di]
	cmps	[word es:si], [di]
	cmps	[word ss:si], [di]
	cmps	[word cs:si], [di]
	cmps	[word si], [es:di]
	cmps	[word ds:si], [es:di]
	cmps	[word es:si], [es:di]
	cmps	[word ss:si], [es:di]
	cmps	[word cs:si], [es:di]

	cmps	[si], [word di]
	cmps	[ds:si], [word di]
	cmps	[es:si], [word di]
	cmps	[ss:si], [word di]
	cmps	[cs:si], [word di]
	cmps	[si], [word es:di]
	cmps	[ds:si], [word es:di]
	cmps	[es:si], [word es:di]
	cmps	[ss:si], [word es:di]
	cmps	[cs:si], [word es:di]

	cmps	[word si], [word di]
	cmps	[word ds:si], [word di]
	cmps	[word es:si], [word di]
	cmps	[word ss:si], [word di]
	cmps	[word cs:si], [word di]
	cmps	[word si], [word es:di]
	cmps	[word ds:si], [word es:di]
	cmps	[word es:si], [word es:di]
	cmps	[word ss:si], [word es:di]
	cmps	[word cs:si], [word es:di]

over:
	int	20h

	ENDS	SEG1

	END	start
