; Test processor/coprocessor mode selection.

	IDEAL

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN
	ORG	100h
start:
	; default mode 8086 including 8087
	int	20h
	fadd

	; disable coprocessor
	PNO87
	fadd

	; processor directive enables coprocessor
	P8086
	fadd

	; coprocessor directive enables coprocessor
	PNO87
	P8087
	fadd

	ENDS	MAIN

	END	start
