	IDEAL
	JUMPS
	MODEL	tiny
	CODESEG
	ORG	100h
start:
	test	ax, 1234h
	jae	label1
	db	80h DUP (0)
label1:
	int	20h
	END	start
