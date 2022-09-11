	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
start:
	int	20h
data:
	dw	1234h
	dw	'*'
	dw	5,6,'!','-'
	dw	10 dup (1234h),4 dup (0DEADh,3 dup (0FACEh),0BEEFh)
	ENDS	MAIN
	SEGMENT	BSS UNINIT
	dw	?
	dw	?, ?, ?
	dw	3 dup (?)
	ENDS	BSS
	END	start
