	IDEAL
	ASSUME CS:IMAGE, DS:IMAGE, ES:IMAGE, SS:IMAGE

	SEGMENT SEG1 PUBLIC
	EXTRN	_XBYTE: BYTE, _XWORD: WORD, _XCODE: PROC
	ENDS

	SEGMENT	SEG2

	; r/m8 displacement
	mov	dh, [_XBYTE]
	mov	dh, [SI+_XBYTE]

	; r/m16 displacement
	mov	dx, [_XWORD]
	mov	dx, [SI+_XWORD]

	; moffs8 displacement
	mov	al, [_XBYTE]

	; moffs16 displacement
	mov	ax, [_XWORD]

	; imm16
	mov	ax, OFFSET _XBYTE
	mov	ax, OFFSET _XWORD

	; JMP r/m16
	jmp	[DI+_XWORD]
	call	[DI+_XWORD]

	ENDS

; Turbo requires code label in same segment as its use

	SEGMENT SEG1

	; JMP rel16
	jmp	_XCODE
	call	_XCODE

	ENDS

	GROUP	IMAGE SEG1, SEG2

	END
