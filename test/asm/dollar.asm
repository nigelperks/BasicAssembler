	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN
	ORG	100h
start:
	jmp	$
	mov	ax, OFFSET $
	dw	$
	dw	OFFSET $
	ENDS	MAIN
	END	start
