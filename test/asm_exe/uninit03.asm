; UNINIT stack segment

	IDEAL

	SEGMENT	SEG1
	ASSUME	CS:SEG1
start:
	mov	di, OFFSET stk
	push	ax
	int	20h
	ENDS	SEG1

	SEGMENT	SEG2 STACK UNINIT
stk	DB	14h DUP (?)
	ENDS

	END	start
