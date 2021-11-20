	IDEAL

	ASSUME	CS: SEG1

	SEGMENT	SEG1 

start:
	int	20h

var	dw	SEG var
	dw	OFFSET var
	dw	SEG var2
	dw	OFFSET var2

	ENDS	SEG1

	SEGMENT	SEG2 

	db	20h DUP (99h)

	ENDS	SEG2

	ASSUME	CS: GROUP1

	SEGMENT	SEG3 

	dw	0DEADh
	dw	SEG var
	dw	OFFSET var
	dw	SEG var2
	dw	OFFSET var2

	mov	ax, SEG var2
	mov	dx, OFFSET var2
var2:
	dw	0

	ENDS	SEG3

	GROUP	GROUP1	SEG2, SEG3

	END	start
