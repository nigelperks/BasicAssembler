	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN
	ORG	100h
start:

A1 = 2912h
B1	equ	A1+3
;C1	equ	D1-4
D1 = 10

	mov	ax, A1
	mov	bx, B1
	jmp	quit
;	mov	al, [si+DIFF]
;	mov	cx, C1
;	mov	dl, [di + OFFSET thing]
;	mov	di, DIFF

pad	db	D1 dup ('*')

quit:
	int	20h

; DIFF = quit - start

	db	200 dup (0)
thing	dw	1234h

	ENDS	MAIN
	END	start
