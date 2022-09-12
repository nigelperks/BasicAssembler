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
	db	132 dup (0)
dest:
	int	20h
	dw	dest - ages
	ENDS	MAIN
	END	start
