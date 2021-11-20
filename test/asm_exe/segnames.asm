	IDEAL

	ASSUME	CS: SEG1

	; forward references to segments are not allowed yet
	SEGMENT	SEG1
	ENDS	SEG1
	SEGMENT	SEG2
	ENDS	SEG2
	SEGMENT	_STACK STACK
	ENDS	_STACK

	ASSUME	CS: SEG1

	SEGMENT	SEG1
start:
	mov	ax, SEG1
	mov	dx, SEG2
	mov	bx, _STACK

	ENDS	SEG1

	ASSUME	CS: SEG2

	SEGMENT	SEG2

	mov	ax, SEG1
	mov	dx, SEG2
	mov	bx, _STACK

	ENDS	SEG2

	SEGMENT	_STACK STACK

	DB	20h DUP (0)

	ENDS	_STACK

	END	start
