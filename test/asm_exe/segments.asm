	IDEAL

	SEGMENT	CODE1
	ASSUME	CS:CODE1, DS:DATA1, ES:DATA1

	mov ax, [1234h]
	int 21h
	mov dh, [cloth]

	ENDS	CODE1

	SEGMENT	DATA1

cloth	DB	99h
info	DW	0DEADh

	ENDS	DATA1

	SEGMENT	CODE2
	ASSUME	CS:CODE2

start:
	mov	cl, 12
	mov	bh, -4
	adc	cl, bh

	ENDS	CODE2

	END	start
