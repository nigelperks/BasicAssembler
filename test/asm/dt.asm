	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
start:
	int	20h
data:
	dt	0
;	dt	11223344556677889900h
	dt	'*'
	dt	2 dup (1122334455h)
	dt	112233445566h,77889900AABBCCDDh
	ENDS	MAIN
	SEGMENT	BSS UNINIT
	dt	?
	dt	?, ?, ?
	dt	3 dup (?)
	ENDS	BSS
	END	start
