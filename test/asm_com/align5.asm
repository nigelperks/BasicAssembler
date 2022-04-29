; Test alignment of individual data items

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN
	ORG	100h
start:
	mov	si, OFFSET _a
	mov	di, OFFSET fini
	int	20h

	DB	1,2,3

	ALIGN	4
_a	DD	0DEADFACEh

	ALIGN	4
	DD	0BEEFBEEFh

	ALIGN	8
	DB	1,2,3,4,5,6,7,8,9,10
fini:

	ENDS	MAIN

	END	start
