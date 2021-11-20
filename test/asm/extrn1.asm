; EXTRN outside a segment

	IDEAL

	EXTRN	blurt: WORD

	ASSUME	CS:SEG1

	SEGMENT	SEG1
start:
	int	20h

	ENDS	SEG1

	END	start
