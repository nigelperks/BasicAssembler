; Segment register operations: PUSH, POP

	MODEL	TINY
	CODESEG
	ORG	100h
start:
	PUSH	CS
	PUSH	SS
	PUSH	DS
	PUSH	ES

	POP	DS
	POP	ES
	POP	SS

	END	start
