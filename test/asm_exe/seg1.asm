	IDEAL

	ASSUME	CS: SEG1

	SEGMENT	SEG1

start:
	mov	ax, SEG var	; immediate operand, same segment, no group
	mov	dx, SEG var2	; immediate operand, different segment, in a group
	int	20h

var	dw	1234h

	ENDS	SEG1

	SEGMENT	SEG2

	db	20h DUP (99h)

	ENDS	SEG2

	ASSUME	CS: SEG3

	SEGMENT	SEG3

	mov	ax, SEG var2	; immediate operand, same segment, in a group
	mov	dx, SEG var	; immediate operand, different segment, no group
	int	20h

var2	dw	0DEADh

	ENDS	SEG3

	GROUP	GROUP1	SEG2, SEG3

	END	start
