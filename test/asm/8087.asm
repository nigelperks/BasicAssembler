	IDEAL

	SEGMENT	SEG1

	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1

	ORG	100h
start:
	jmp	over	; force resize pass

	f2xm1
	fabs
	fchs
	fclex
	fnclex
	fcompp
	fdecstp
	fdisi
	fndisi
	feni
	fneni
	fincstp
	finit
	fninit
	fldlg2
	fldln2
	fldl2e
	fldl2t
	fldpi
	fldz
	fld1
	fnop
	fnop
	fpatan
	fprem
	fptan
	frndint
	fscale
	fsqrt
	ftst
	fwait
	fxam
	fxtract
	fyl2xp1

over:

	ENDS	SEG1

	END	start
