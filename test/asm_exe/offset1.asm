; Test a label becoming a 1-byte or 2-byte offset
; depending on whether it needs to be relocated.

	IDEAL

; Private label in non-combinable segment: 1-byte offset.

	SEGMENT	SEG1
	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:_STACK
start:
	mov	ax, [SI+_x]
	int	20h
_x	dw	4
	ENDS	SEG1

	SEGMENT	_STACK STACK
	DB	20h dup (0)
	ENDS	_STACK

	END	start
