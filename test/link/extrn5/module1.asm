; test externals: public segment of same name in two modules

	IDEAL
	ASSUME CS:SEG1, DS:SEG1, ES:SEG1, SS:SEG1
	SEGMENT	SEG1 PUBLIC
	ORG	100h
start:
	int	20h

_XBYTE	db	0
_XWORD	dw	0
_XCODE:
	int	20h

	ENDS

	PUBLIC	_XBYTE, _XWORD, _XCODE

	END 	start
