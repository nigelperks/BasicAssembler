; Test error messages when case insensitive labels clash

	IDEAL
	MODEL	tiny
	CODESEG
	EXTRN	Start: PROC
	PUBLIC	start
	ORG	100h
start:
	mov	ax, 33
	call	Start
	END 	start

