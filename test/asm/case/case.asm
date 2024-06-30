; Case sensitive labels

	IDEAL
	MODEL	tiny
	CODESEG
	ORG	100h
start:
	mov	ax, [value]
	inc	ax
	jmp	START
Start:
	mov	ax, [Value]
	ret
START:
	mov	[VALUE], ax
	call	Start
	int	20h

value	dw	1234h
Value	dw	5678h
VALUE	dw	9ABCh

	END	start
