	IDEAL

	SEGMENT	SEG1 PUBLIC
	ASSUME	CS:SEG1
	jmp	$
	mov	cx, OFFSET $
	dw	$
	dw	OFFSET $
	ENDS	SEG1

	END
