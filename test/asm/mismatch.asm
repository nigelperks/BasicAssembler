	IDEAL
	MODEL TINY
	CODESEG
	ORG	0100h
start:
	; reg, reg/mem
	adc al, ax
	adc ax, al

	adc al, [word addr]
	adc ax, [byte addr]

	; reg/mem, reg
	adc [byte addr], ax
	adc [word addr], al

	; AL/AX, indirect
	mov al, [word addr]
	mov ax, [byte addr]

	; indirect, AL/AX
	mov [word addr], al
	mov [byte addr], ax

	DATASEG
addr	DW 1234h
	END	start
