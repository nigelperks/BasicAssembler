	IDEAL
	ASSUME CS:SEG2, DS:SEG2, ES:SEG2, SS:SEG2
	SEGMENT SEG2 PUBLIC
info	DW	1111h
  	DW	2222h
	DW	3333h
	DW	4444h
        DW      info
final:
	ENDS
	END