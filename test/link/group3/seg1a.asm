	IDEAL
	ASSUME CS:SEG1, DS:SEG1, ES:SEG1, SS:SEG1
	SEGMENT SEG1 PUBLIC
	ORG	100h
start:
	mov	ax, 1234h
	mov	dx, 5678h
        call    start
	int	21h
	jmp	near CS:100h
	ENDS
GROUP	MYGROUP SEG1
	END	start
