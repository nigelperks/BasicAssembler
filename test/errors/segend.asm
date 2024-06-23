; Test: segment open at END directive

	SEGMENT	main
	ASSUME	CS:main,DS:main,ES:main,SS:main
	ORG	100h
start:
	MOV	AX, 1234h

	END	start
