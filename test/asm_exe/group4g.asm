	IDEAL

	; Two groups of two segments each. ASSUME group.

	ASSUME	CS:GROUP1, DS:GROUP1, ES:GROUP1

	SEGMENT SEG0

	DB	1024 DUP (00h)
	DB	1024 DUP (01h)
	DB	1024 DUP (02h)
	DB	1024 DUP (03h)
	DB	1024 DUP (04h)
	DB	1024 DUP (05h)
	DB	1024 DUP (06h)
	DB	1024 DUP (07h)
	DB	1024 DUP (08h)
	DB	1024 DUP (09h)
	DB	1024 DUP (0Ah)
	DB	1024 DUP (0Bh)
	DB	1024 DUP (0Ch)
	DB	1024 DUP (0Dh)
	DB	1024 DUP (0Eh)
	DB	1024 DUP (0Fh)

	ENDS	SEG0

	SEGMENT	SEG1

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	ENDS	SEG1

	ASSUME	CS:GROUP2, DS:GROUP2, ES:GROUP2

	SEGMENT SEG2

	DB	1024 DUP (00h)
	DB	1024 DUP (01h)
	DB	1024 DUP (02h)
	DB	1024 DUP (03h)
	DB	1024 DUP (04h)
	DB	1024 DUP (05h)
	DB	1024 DUP (06h)
	DB	1024 DUP (07h)
	DB	1024 DUP (08h)
	DB	1024 DUP (09h)
	DB	1024 DUP (0Ah)
	DB	1024 DUP (0Bh)
	DB	1024 DUP (0Ch)
	DB	1024 DUP (0Dh)
	DB	1024 DUP (0Eh)
	DB	1024 DUP (0Fh)

	ENDS	SEG2

	SEGMENT	SEG3
start:
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	ENDS	SEG3

	GROUP	GROUP1 SEG0, SEG1
	GROUP	GROUP2 SEG2, SEG3

	END	start
