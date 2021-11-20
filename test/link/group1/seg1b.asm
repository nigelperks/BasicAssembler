; Do private segments in distinct modules in groups of same name
; get relocated to beginning of one combined group?
; That is, are groups public?

	IDEAL
	ASSUME CS:SEG1, DS:SEG1, ES:SEG1, SS:SEG1
	SEGMENT SEG1 PRIVATE
sword:
	DW	0DEADh
	DW	0FACEh
	jmp	sword
	jmp	near cs:100h
	ENDS
	GROUP	MYGROUP SEG1
	END
