; Test invalid number formats

	IDEAL
	SEGMENT	main
	ASSUME	CS:main,DS:main,ES:main,SS:main
start:
	int	20h
data:
	dw	0a
	dw	0g
	dw	0b
	dw	0b2
	dw	0o
	dw	0o8
	dw	0o9
	dw	0x
	dw	0xg
	dw	0x1g
	dw	1a
	dw	0x1234h

	ENDS	main

	END	start
