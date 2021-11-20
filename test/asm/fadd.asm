	IDEAL

	; FADD with various operand formats

	SEGMENT	SEG1

	ASSUME	CS:SEG1, DS:SEG1, ES:SEG1, SS:SEG1

	ORG	100h
start:

	; implicit operands
	; add top two items, consume operands, leave result
	; faddp st(1), st
	FADD

	; short real in memory
	FADD	[DWORD _short]
	FADD	[DWORD BP+DI-8]

	; long real in memory
	FADD	[QWORD _long]
	FADD	[QWORD BX+_long]
	FADD	[QWORD SI+20H]

	; stack
	FADD	ST, ST
	FADD	ST, ST(0)
	FADD	ST(0), ST
	FADD	ST, ST(1)
	FADD	ST(1), ST
	FADD	ST, ST(7)
	FADD	ST(7), ST

_short	DD	12345678h
_long	DQ	123456789ABCDEF0H

	ENDS	SEG1

	END	start
