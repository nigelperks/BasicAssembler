	IDEAL
	ASSUME CS:_CODE,DS:_DATA,ES:_DATA,SS:_DATA
	SEGMENT	_CODE PUBLIC
start2:
	jmp	thingy
	mov	ax, 0FACEh
	mov	dx, OFFSET bill
	int	40h
thingy:
	ENDS	_CODE
	SEGMENT	_DATA PUBLIC
bill	DW	1111h
	DW	2222h
	DW	3333h
	ENDS	_DATA
	GROUP	DGROUP	_CODE, _DATA
	END
