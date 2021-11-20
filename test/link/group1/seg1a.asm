; Do private segments in distinct modules in groups of same name
; get relocated to beginning of one combined group?
; That is, are groups public?

	IDEAL
	ASSUME CS:SEG1, DS:SEG1, ES:SEG1, SS:SEG1
	SEGMENT SEG1 PRIVATE
	ORG	100h
start:
	jmp	nobble
	mov	ax, 1234h
	mov	dx, 5678h
	int	21h
	jmp	near 100h
nobble:
	ENDS
	GROUP	MYGROUP SEG1
	END	start
