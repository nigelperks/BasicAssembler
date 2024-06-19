; Test that "operand size mismatch" errors can be overridden by BYTE etc.

	IDEAL
	MODEL TINY
	CODESEG
	ORG	0100h
start:
high2	dw	1234h
high1	db	12h
	db	34h

	; reg, reg/mem
	adc al, [BYTE high2]
	adc ax, [WORD high1]
	adc al, [BYTE low2]
	adc ax, [WORD low1]

	; reg/mem, reg
	adc [BYTE high2], al
	adc [WORD high1], ax
	adc [BYTE low2], al
	adc [WORD low1], ax

	; AL/AX, indirect
	mov al, [BYTE high2]
	mov ax, [WORD high1]
	mov al, [BYTE low2]
	mov ax, [WORD low1]

	; indirect, AL/AX
	mov [BYTE high2], al
	mov [WORD high1], ax
	mov [BYTE low2], al
	mov [WORD low1], ax

	ALIGN	2
low2	dw	1234h
low1	db	12h
	db	34h

	END	start
