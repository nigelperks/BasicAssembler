	IDEAL

	SEGMENT	SEG1

	ASSUME	CS: SEG1

start:
	int	20h

p1:
	ret
p2:
	retn
p3:
	retf
p4:
	ret	16
p5:
	retn	8
p6:
	retf	32


	ENDS	SEG1

	SEGMENT	_STACK STACK
	DB	10h DUP (0)
	ENDS	_STACK

	END	start
