	IDEAL
	SEGMENT	main PUBLIC WORD
	ASSUME	CS:main,DS:main,ES:main,SS:main
	EXTRN	Start: PROC
	PUBLIC	start
start:
	mov	dl, '*'
	jmp	Start
	ENDS	main
	END
