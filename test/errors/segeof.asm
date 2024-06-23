; Test: segment open at end of file

	SEGMENT	main
	ASSUME	CS:main,DS:main,ES:main,SS:main
	ORG	100h
start:
	MOV	AX, 1234h
