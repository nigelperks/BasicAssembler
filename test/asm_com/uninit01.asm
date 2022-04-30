; Simplest uninitialised data

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:UDATA
	ORG	100h
start:
	mov	al, [unknown]
	mov	si, OFFSET unknown
	mov	[BYTE PTR unknown], '*'
	int	20h

	ENDS	MAIN

	SEGMENT	UDATA UNINIT
unknown	DB	?
	DW	?
	DD	?
	DQ	?
	DT	?
	ENDS	UDATA

	END	start
