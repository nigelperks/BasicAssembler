; Test alignment in image of data, data+space, space.

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN
start:
	int	20h
	dw	SEG val1, OFFSET val1
	dw	SEG val2, OFFSET val2
	dw	SEG space, OFFSET space
	ENDS	MAIN

	SEGMENT	SEG1 PARA
val1	dw	1234h
	ENDS	SEG1

	SEGMENT	SEG2 PARA UNINIT
val2	dw	?
	ENDS	SEG2

	GROUP	GRP SEG1,SEG2

	SEGMENT	EXTRA PAGE UNINIT
space	dw	?
	ENDS	EXTRA

	END	start
