	IDEAL
	ASSUME CS:SEG1, DS:SEG1, ES:SEG1, SS:SEG1
	SEGMENT	SEG1 PUBLIC
	EXTRN	start: PROC
lemon:
	CALL	start
	JMP	start
	ENDS
	END