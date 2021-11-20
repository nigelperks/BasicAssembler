	IDEAL
	ASSUME CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1
	SEGMENT SEG1
	ORG	100h
start:
	mov	ax, 33
	inc	cx
	jmp	near CS:40h
	ENDS
	END 	start
