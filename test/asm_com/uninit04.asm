; Group uninit space on top of uninit space

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:_GROUP,DS:_GROUP,ES:_GROUP,SS:_GROUP
	ORG	100h
start:
	mov	ax, [single]
	mov	si, OFFSET single
	mov	di, OFFSET fini1
	int	20h
	mov	si, OFFSET double
	mov	di, OFFSET fini2
	int	20h

	ENDS	MAIN

	SEGMENT	U1 UNINIT
single	DW	?
	DW	?
fini1:
	ENDS	U1

	SEGMENT	U2 UNINIT
double	DD	?
	DD	?
fini2:
	ENDS	U2

	GROUP	_GROUP MAIN,U1,U2

	END	start
