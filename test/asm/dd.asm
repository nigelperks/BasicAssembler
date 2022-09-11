	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
start:
	int	20h
data:
	dd	12345678h
	dd	'*'
	dd	5,6,'!','-'
	dd	3 dup (12345678h),4 dup (0DEADFACEh,2 dup (11223344h))
	ENDS	MAIN
	SEGMENT	BSS UNINIT
	dd	?
	dd	?, ?, ?
	dd	3 dup (?)
	ENDS	BSS
	END	start
