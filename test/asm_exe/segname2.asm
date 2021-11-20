	IDEAL

	ASSUME	CS: SEG1

	; forward references to segments are not allowed yet
	SEGMENT	SEG1
	ENDS	SEG1
	SEGMENT	SEG2
	ENDS	SEG2
	SEGMENT	SEG3
	ENDS	SEG3
	SEGMENT	SEG4
	ENDS	SEG4
	SEGMENT	_STACK STACK
	ENDS	_STACK

	ASSUME	CS: SEG1

	SEGMENT	SEG1
start:
	mov	ax, SEG1
	mov	dx, SEG2
	mov	cx, SEG3
	mov	si, SEG4
	mov	bx, _STACK

	ENDS	SEG1

	ASSUME	CS: SEG2

	SEGMENT	SEG2

	mov	ax, SEG1
	mov	dx, SEG2
	mov	cx, SEG3
	mov	si, SEG4
	mov	bx, _STACK

	ENDS	SEG2

	ASSUME	CS: SEG3

	SEGMENT	SEG3

	mov	ax, SEG1
	mov	dx, SEG2
	mov	cx, SEG3
	mov	si, SEG4
	mov	bx, _STACK

	ENDS	SEG3

	ASSUME	CS: SEG4

	SEGMENT	SEG4

	mov	ax, SEG1
	mov	dx, SEG2
	mov	cx, SEG3
	mov	si, SEG4
	mov	bx, _STACK

	ENDS	SEG4

	SEGMENT	_STACK STACK

	DB	20h DUP (0)

	ENDS	_STACK

	GROUP	GROUP1 SEG1, SEG2
	GROUP	GROUP2 SEG3, SEG4

	END	start
