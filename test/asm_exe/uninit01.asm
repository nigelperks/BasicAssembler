; Simplest uninitialized data

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:UDATA
start:
	mov	al, [unknown]
	mov	si, OFFSET unknown
	mov	di, OFFSET fini
	mov	[BYTE PTR unknown], '*'
	int	20h

	ENDS	MAIN

	SEGMENT	UDATA UNINIT
unknown	DB	?
	DW	?
	DD	?
	DQ	?
	DT	?
fini	DB	?
	ENDS	UDATA

	END	start
