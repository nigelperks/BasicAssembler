	IDEAL
	SEGMENT	main PUBLIC WORD
	ASSUME	CS:main,DS:main,ES:main,SS:main
	EXTRN	start: PROC
	PUBLIC	Start
Start:
	mov	ax, 33
	call	start
	ENDS	main
	END 	Start

