	IDEAL

; initialized data in UNINIT segment

	SEGMENT	SEG1 UNINIT

	ASSUME	CS:SEG1,DS:SEG1
start:
	int	20h

	db	0FAh,0CEh
_count	dw	1234h
	dd	0DEADFACEh
	dq	1234567812345678h
	dt	0

	jmp	start

	ENDS	SEG1

; uninitialized data in non-UNINIT segment

	SEGMENT SEG2

	ASSUME	CS:SEG2,DS:SEG2

	db	2 dup (?)
	dw	?
	dd	?
	dq	?
	dt	?

	ENDS	SEG2

	END
