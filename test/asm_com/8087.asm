	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1

	ORG	100h
start:
	jmp	over	; force resize pass

	; no operands

	f2xm1
	fabs
	fchs
	fclex
	fnclex

	fxam

	; arithmetic operands

	; implicit stack
	fadd

	; explicit stack, register 0
	fadd	st, st
	fadd	st, st(0)
	fadd	st(0), st
	fadd	st(0), st(0)

	; explicit stack, registers 1-7
	fadd	st, st(1)
	fadd	st, st(7)
	fadd	st(1), st
	fadd	st(7), st

	; explicit stack with pop, register 0
	faddp	st(0), st
	faddp	st(0), st(0)

	; explicit stack with pop, registers 1-7
	faddp	st(1), st
	faddp	st(7), st
	faddp	st(7), st(0)

	; memory
	fadd	[dword _short]
	fadd	[qword _long]

	; different operation => different reg field constant
	fsub
	fsub	st, st
	fsub	st, st(3)
	fsub	st(4), st
	fsub	[dword _short]
	fsub	[qword _long]

	fsubp	st(0), st
	fsubp	st(1), st
	fsubp	st(7), st

	; BCD
	fbld	[tbyte _bcd]

	; one stack operand only
        fcom	st
        fcom	st(7)

over:
	int	20h

_short	dd	0
_long	dq	0
_bcd	dt	0

	ENDS	SEG1

	END	start
