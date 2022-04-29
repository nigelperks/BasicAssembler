; Align segments in image: minimum alignment is paragraph except first seg

	IDEAL

	SEGMENT	MAIN WORD
	ASSUME	CS:MAIN
	ORG	100h
start:
	int	20h
	ENDS	MAIN

	END	start
