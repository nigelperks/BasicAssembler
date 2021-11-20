	IDEAL

	; Two segments in their own groups. ASSUME segment.

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

	DB	1024 DUP (10h)
	DB	1024 DUP (11h)
	DB	1024 DUP (12h)
	DB	1024 DUP (13h)
	DB	1024 DUP (14h)
	DB	1024 DUP (15h)
	DB	1024 DUP (16h)
	DB	1024 DUP (17h)
	DB	1024 DUP (18h)
	DB	1024 DUP (19h)
	DB	1024 DUP (1Ah)
	DB	1024 DUP (1Bh)
	DB	1024 DUP (1Ch)
	DB	1024 DUP (1Dh)
	DB	1024 DUP (1Eh)
	DB	1024 DUP (1Fh)

	DB	1024 DUP (20h)
	DB	1024 DUP (21h)
	DB	1024 DUP (22h)
	DB	1024 DUP (23h)
	DB	1024 DUP (24h)
	DB	1024 DUP (25h)
	DB	1024 DUP (26h)
	DB	1024 DUP (27h)
	DB	1024 DUP (28h)
	DB	1024 DUP (29h)
	DB	1024 DUP (2Ah)
	DB	1024 DUP (2Bh)
	DB	1024 DUP (2Ch)
	DB	1024 DUP (2Dh)
	DB	1024 DUP (2Eh)
	DB	1024 DUP (2Fh)

	DB	1024 DUP (30h)
	DB	1024 DUP (31h)
	DB	1024 DUP (32h)
	DB	1024 DUP (33h)
	DB	1024 DUP (34h)
	DB	1024 DUP (35h)
	DB	1024 DUP (36h)
	DB	1024 DUP (37h)
	DB	1024 DUP (38h)
	DB	1024 DUP (39h)
	DB	1024 DUP (3Ah)
	DB	1024 DUP (3Bh)
	DB	1024 DUP (3Ch)
	DB	1024 DUP (3Dh)
	DB	1024 DUP (3Eh)
	DB	1024 DUP (3Fh)

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
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20
	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

	mov	ax, [1234h]	; a1 34 12
	mov	dx, 5678h	; ba 78 56
	int	20h		; cd 20

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

	GROUP	GROUP0 SEG0
	GROUP	GROUP1 SEG1

	END	start
