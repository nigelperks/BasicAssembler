; Test a label becoming a 1-byte or 2-byte offset
; depending on whether it needs to be relocated.

	IDEAL

; Public label in combinable segment: 2-byte offset

	SEGMENT	SEG1 PUBLIC
	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:_STACK
	PUBLIC	_x
start:
	mov	ax, [SI+_x]
	int	20h
_x	dw	4
	ENDS	SEG1

	SEGMENT	_STACK STACK
	DB	20h dup (0)
	ENDS	_STACK

	END	start
