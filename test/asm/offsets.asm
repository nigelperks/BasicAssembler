	; Different kinds of offsets and relocations

	IDEAL

	ASSUME CS:SEG1, DS:SEG1, ES:SEG1, SS:SEG1

	SEGMENT SEG1
	ORG	100h
start:
	; absolute in main segment
	jmp	near CS:90h
	call	near CS:90h
	mov	al, [90h]
	mov	dh, [si+90h]

frog:
	jmp	near CS:40h
	call	near CS:40h
	mov	al, [40h]
	mov	dh, [si+40h]

	; symbolic in same segment
	jmp	frog
	call	frog

	ENDS	SEG1

	ASSUME CS:SEG1A, DS:SEG1A, ES:SEG1A, SS:SEG1A

	SEGMENT SEG1A

	; absolute in second segment in main group
	jmp	near CS:90h
	call	near CS:90h
	mov	al, [90h]
	mov	dh, [si+90h]

frog1a:
	jmp	near CS:40h
	call	near CS:40h
	mov	al, [40h]
	mov	dh, [si+40h]

	; symbolic in same segment
	jmp	frog1a
	call	frog1a

	; symbolic in different segment in same group gives Turbo fixup overflow

	ENDS	SEG1A

	; absolute in group

	ASSUME CS:GROUP1, DS:GROUP1, ES:GROUP1, SS:GROUP1

	SEGMENT SEG1
	jmp	near CS:90h
	call	near CS:90h
	mov	al, [90h]
	mov	dh, [si+90h]
	ENDS	SEG1

	SEGMENT SEG1A
	jmp	near CS:90h
	call	near CS:90h
	mov	al, [90h]
	mov	dh, [si+90h]
	ENDS	SEG1A

	ASSUME CS:SEG2, DS:SEG2, ES:SEG2, SS:SEG2

	SEGMENT	SEG2

	; absolute in second segment, in same module, outside group
	jmp	near CS:90h
	call	near CS:90h
	mov	al, [90h]
	mov	dh, [si+90h]

frog2:
	jmp	near CS:40h
	call	near CS:40h
	mov	al, [40h]
	mov	dh, [si+40h]

	; symbolic in same segment
	jmp	frog2
	call	frog2

	ENDS	SEG2

	GROUP	GROUP1 SEG1, SEG1A

	END	start
