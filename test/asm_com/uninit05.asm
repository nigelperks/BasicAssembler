; Uninit space at the beginning of a group

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:_BSS,ES:_BSS,SS:_BSS
	ORG	100h
start:
	mov	ax, [single]
	mov	si, OFFSET double
	mov	di, OFFSET fini
	int	20h

	ENDS	MAIN

	SEGMENT	U1 UNINIT
single	DW	?
	DW	?
double	DD	?
	DD	?
fini:
	ENDS	U1

	GROUP	_BSS U1

	END	start
