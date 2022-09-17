; Test 286 non-privileged

	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
	P286N
start:
	enter	0, 0
	enter	0, 1
	enter	0, 255
	enter	1, 255
	enter	0FFFFh, 255

        leave

bounds	dw	1
	dw	8

	bound	dx, [bounds]

	pusha

	push	1234h
	push	7fh
	push	80h
	push	-1

	int	20h
	ENDS	MAIN
	END	start
