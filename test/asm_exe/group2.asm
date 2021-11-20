	IDEAL

	; Two segments in group. ASSUME segment.

	ASSUME	CS:SEG1, DS:SEG0, ES:SEG0

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

	ENDS	SEG1

	GROUP	GROUP1 SEG0, SEG1

	END	start
