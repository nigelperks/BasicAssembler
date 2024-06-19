	IDEAL
	MODEL TINY
	CODESEG
	ORG	0100h
start:
addr2	dw	1234h
addr1	db	'*'

	ALIGN	2

	; reg, reg/mem
	adc al, [addr2]
	adc ax, [addr1]

	; reg/mem, reg
	adc [addr1], ax
	adc [addr2], al

	; AL/AX, indirect
	mov al, [addr2]
	mov ax, [addr1]

	; indirect, AL/AX
	mov [addr2], al
	mov [addr1], ax

	END	start
