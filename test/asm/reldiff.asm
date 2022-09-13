; Test expressions: relative - relative

	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
start:
	int	20h
ages	dw	31,49
	dw	ages - start
	jmp	dest		; resized
pad:
	db	132 dup (0)
dest:
	int	20h
	dw	dest - ages
	db	(pad - ages) dup (0)
	dw	(pad - ages) dup (0)
	dd	(pad - ages) dup (0)
	dq	(pad - ages) dup (0)
	dt	(pad - ages) dup (0)
	ENDS	MAIN
	END	start
