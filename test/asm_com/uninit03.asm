; UNINIT segment in group

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:_GROUP,DS:_GROUP,ES:_GROUP,SS:_GROUP
	ORG	100h
start:
	mov	ax, [single]
	mov	si, OFFSET single
	mov	di, OFFSET fini
	int	20h

	ENDS	MAIN

	SEGMENT	UDATA UNINIT
single	DW	?
	DW	?
fini:
	ENDS	UDATA

	GROUP	_GROUP MAIN,UDATA

	END	start
