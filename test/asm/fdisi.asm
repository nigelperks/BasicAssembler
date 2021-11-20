	IDEAL

	; operators whose encoding is not in 387 manual

	SEGMENT	SEG1

	ASSUME	CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1

	ORG	100h
start:
	fdisi
	fndisi
 	feni
	fneni
	fldlg2
over:

	ENDS	SEG1

	END	start
