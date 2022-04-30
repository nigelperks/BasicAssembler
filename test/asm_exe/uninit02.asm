; Uninitialised data: open the same UNINIT segment more than once.

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:UDATA
start:
	mov	si, OFFSET a1
	mov	si, OFFSET a2
	mov	si, OFFSET a3
	mov	si, OFFSET a4
	mov	si, OFFSET a5
	mov	si, OFFSET b1
	mov	si, OFFSET b2

	ENDS	MAIN

	SEGMENT	UDATA UNINIT
a1	DB	?
a2	DW	?
a3	DD	?
a4	DQ	?
a5	DT	?
	ENDS	UDATA

	SEGMENT	MAIN
	mov	cx, 1234h
	sub	dx, cx
	int	20h
	ENDS	MAIN

	SEGMENT	UDATA UNINIT
b1	DB	20h DUP (?)
b2	DW	?
	ENDS	UDATA

	END	start
