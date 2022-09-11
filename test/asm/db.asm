	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
start:
	int	20h
data:
	db	12h
	db	'*'
	db	5,6,'!','-'
	db	10 dup (' '),4 dup ('-',3 dup ('*'),'!')
	db	'Hello!'
	db	3 dup ('WOW!')
	ENDS	MAIN
	SEGMENT	BSS UNINIT
	db	?
	db	?, ?, ?
	db	3 dup (?)
	ENDS	BSS
	END	start
