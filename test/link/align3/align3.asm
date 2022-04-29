; Align segments in image: minimum alignment is paragraph except first seg

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN
	ORG	100h
start:
	mov	si, OFFSET _a
	int	20h
	ENDS	MAIN

	SEGMENT SEG1 DWORD
_a	DD	12345678h
	ENDS	SEG1

	END	start
