	IDEAL

	; Several code segments

	ASSUME	DS:SEG0, ES:SEG0

	SEGMENT	SEG0

	DB	1024 DUP (0)
	DB	1024 DUP (1)
	DB	1024 DUP (2)
	DB	1024 DUP (3)
	DB	1024 DUP (4)
	DB	1024 DUP (5)
	DB	1024 DUP (6)
	DB	1024 DUP (7)

	ENDS	SEG0

	ASSUME	CS:SEG1

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
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

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

	ASSUME	CS:SEG2

	SEGMENT	SEG2
start:
	add	dx, cx
	add	dx, bx
	add	dx, ax
	int	40h

	ENDS	SEG2

	END	start
