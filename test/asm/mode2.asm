; Test 286/287 processor/coprocessor mode selection.

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN
	ORG	100h
start:
	; default mode 8086 including 8087
	int	20h
	fadd		; 8087 OK
	fsetpm		; 287 ERROR

	; disable coprocessor
	PNO87
	fadd		; ERROR
	fsetpm		; ERROR

	; processor directive enables coprocessor
	P286N
	fadd		; OK
	fsetpm		; OK

	; enable 8087 specifically
	PNO87
	fadd		; ERROR
	fsetpm		; ERROR
	P8087
	fadd		; 8087 OK
	fsetpm		; 287 ERROR

	; re-enable 287
	P287
	fadd		; OK
	fsetpm		; OK

	ENDS	MAIN

	END	start
