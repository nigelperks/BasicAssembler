	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
start:
	int	20h
data	db	data
	db	OFFSET data
	db	SEG data
	db	MAIN
	ENDS	MAIN
	END	start
