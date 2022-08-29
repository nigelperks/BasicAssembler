; $ is a symbol but not user-definable

	IDEAL
	SEGMENT	SEG1
	ORG	100h
start:
	int	20h
$	dw	0
	ENDS	SEG1
	END	start
