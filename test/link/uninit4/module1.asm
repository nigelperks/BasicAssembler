; Attempt to place uninitialised segment before initialised in image.

	IDEAL

	SEGMENT	UDATA UNINIT
	dd	?
	ENDS	UDATA

	SEGMENT	MAIN
	ASSUME	CS:MAIN
	ORG	100h
start:
	int	20h

	ENDS	MAIN

	END	start
