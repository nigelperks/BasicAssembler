; test expressions that can be used for DW values

	IDEAL

K	= 20h

	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
start:
	int	20h
data	dw	1234h
	dw	(1234h)
	dw	$
	dw	data, OFFSET data
	dw	1200h + 34h
	dw	100h + 4 * K - 10h

	ENDS	MAIN

	END	start
