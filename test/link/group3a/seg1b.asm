	IDEAL
	ASSUME CS:MYGROUP, DS:MYGROUP, ES:MYGROUP, SS:MYGROUP
	SEGMENT SEG1 PUBLIC
sword:
	DW	0DEADh
	DW	0FACEh
	JMP	sword
	JMP	near CS:100h
	ENDS
GROUP	MYGROUP SEG1
	END
