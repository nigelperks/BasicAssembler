; Two UNINIT segments in one source file

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:UDATA,ES:U2
	ORG	100h
start:
	mov	ax, [single]
	mov	si, OFFSET single
	mov	dx, [WORD PTR double]
	mov	di, OFFSET double
	int	20h

	ENDS	MAIN

	SEGMENT	UDATA UNINIT
single	DW	?
	DW	?
	ENDS	UDATA

	SEGMENT U2 UNINIT
double	DD	?
	DD	?
	ENDS	U2

	END	start
