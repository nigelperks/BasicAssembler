	SEGMENT MAIN PUBLIC BYTE
	ASSUME	CS:MAIN
	mov	ax, 1
	int	13h
	ENDS	MAIN

	SEGMENT	SEG2 PUBLIC DWORD
	dw	0faceh
	ENDS	SEG2

	GROUP	_DATA SEG2

	END
