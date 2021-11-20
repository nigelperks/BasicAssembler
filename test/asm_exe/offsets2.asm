	; Are data offsets relative to segment or group?
	; The question only makes sense for a segment in a group.
	; A difference will only be shown when another segment comes before it in the group.
	; The problem is only relevant in EXE, not in COM where all is one segment anyway.

; data displacement [disp], [si+disp]
; data word DW fred, OFFSET fred
; immediate mov ax, OFFSET fred

; when the segment register that will address it is assumed to its segment
; when the segment register that will address it is assumed to its group
; (any other case is an error, outside the scope of this file)

	IDEAL

	ASSUME	CS:_CODE

	SEGMENT	_CODE
start:
	int	20h

	ASSUME	DS:_DATA

	mov	dx, [disp1]

	ENDS	_CODE

	SEGMENT	_DATA1

	DB	100H DUP (00)
	DB	100H DUP (01)
	DB	100H DUP (02)
	DB	100H DUP (03)

	ENDS	_DATA1

	SEGMENT _DATA2

disp1	DW	0

	ENDS	_DATA2

	GROUP	_DATA _DATA1, _DATA2

	SEGMENT	_STACK STACK

	DB	20H DUP (0)

	ENDS	_STACK

	END	start
