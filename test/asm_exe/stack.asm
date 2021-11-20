	IDEAL

	ASSUME	CS:_CODE, SS:_STACK

	SEGMENT	_CODE

start:
	mov	al, 13
	int	21h

	ENDS	_CODE

	SEGMENT	_STACK STACK

	db	100h dup (0)

	ENDS	_STACK

	END	start
