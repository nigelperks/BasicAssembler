	IDEAL
	MODEL	tiny
	CODESEG
	EXTRN	start: PROC
	PUBLIC	Start
Start:
	mov	dl, '*'
	jmp	start
	END
