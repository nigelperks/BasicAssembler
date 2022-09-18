; Test 286 non-privileged
; Instructions not liked by the reference assembler

	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
	P286N
start:
	ins	[byte di], dx
	ins	[word di], dx

	int	20h
	ENDS	MAIN
	END	start
