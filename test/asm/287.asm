; instructions on 287 but not on 8087

	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN
	ORG	100h
	P286N
start:
	jmp	quit	; force resizing pass

	FSETPM

	P287
	FSETPM

quit:
	int	20h
	ENDS	MAIN
	END	start
