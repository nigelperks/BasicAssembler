	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1

	ORG	100h

start:
	jmp	over	; force resize pass

	; source: SI
	; destination: ES:DI

	movs	[byte di], [si]
	movs	[byte es:di], [si]
	movs	[byte di], [ds:si]
	movs	[byte di], [es:si]
	movs	[byte di], [ss:si]
	movs	[byte di], [cs:si]
	movs	[byte es:di], [ds:si]
	movs	[byte es:di], [es:si]
	movs	[byte es:di], [ss:si]
	movs	[byte es:di], [cs:si]

	movs	[di], [byte si]
	movs	[es:di], [byte si]
	movs	[di], [byte ds:si]
	movs	[di], [byte es:si]
	movs	[di], [byte ss:si]
	movs	[di], [byte cs:si]
	movs	[es:di], [byte ds:si]
	movs	[es:di], [byte es:si]
	movs	[es:di], [byte ss:si]
	movs	[es:di], [byte cs:si]

	movs	[byte di], [byte si]
	movs	[byte es:di], [byte si]
	movs	[byte di], [byte ds:si]
	movs	[byte di], [byte es:si]
	movs	[byte di], [byte ss:si]
	movs	[byte di], [byte cs:si]
	movs	[byte es:di], [byte ds:si]
	movs	[byte es:di], [byte es:si]
	movs	[byte es:di], [byte ss:si]
	movs	[byte es:di], [byte cs:si]

	movs	[word di], [si]
	movs	[word es:di], [si]
	movs	[word di], [ds:si]
	movs	[word di], [es:si]
	movs	[word di], [ss:si]
	movs	[word di], [cs:si]
	movs	[word es:di], [ds:si]
	movs	[word es:di], [es:si]
	movs	[word es:di], [ss:si]
	movs	[word es:di], [cs:si]

	movs	[di], [word si]
	movs	[es:di], [word si]
	movs	[di], [word ds:si]
	movs	[di], [word es:si]
	movs	[di], [word ss:si]
	movs	[di], [word cs:si]
	movs	[es:di], [word ds:si]
	movs	[es:di], [word es:si]
	movs	[es:di], [word ss:si]
	movs	[es:di], [word cs:si]

	movs	[word di], [word si]
	movs	[word es:di], [word si]
	movs	[word di], [word ds:si]
	movs	[word di], [word es:si]
	movs	[word di], [word ss:si]
	movs	[word di], [word cs:si]
	movs	[word es:di], [word ds:si]
	movs	[word es:di], [word es:si]
	movs	[word es:di], [word ss:si]
	movs	[word es:di], [word cs:si]

over:
	int	20h

	ENDS	SEG1

	END	start
