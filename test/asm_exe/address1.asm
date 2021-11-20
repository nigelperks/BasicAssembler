; Label in group is not addressable from its segment

	IDEAL

	ASSUME	CS:SEG1, DS:SEG2

	SEGMENT	SEG1

start:
	mov	ax, [stuff]

	ENDS	SEG1

	SEGMENT	SEG2

stuff	DW	1234h

	ENDS	SEG2

	GROUP	GROUP1 SEG1, SEG2

	SEGMENT	_STACK STACK

	DB	20H DUP (0)

	ENDS	_STACK

	END	start
