; Paragraph alignments

	IDEAL

	SEGMENT	MAIN PARA
	ASSUME	CS:PHYSICAL,DS:PHYSICAL,ES:PHYSICAL,SS:PHYSICAL
	ORG	100h
start:
	mov	si, OFFSET _page
	int	20h

	ENDS	MAIN

	SEGMENT SEG_BYTE BYTE
_byte	db	1,2,3
	ENDS	SEG_BYTE

	SEGMENT SEG_WORD WORD
_word	dw	1234h,5678h,9abch
	ENDS	SEG_WORD

	SEGMENT SEG_DWORD DWORD
_dword	dd	0DEADBEEFh
	ENDS	SEG_DWORD

	SEGMENT	SEG_PAGE PAGE
_page	dd	0DEADFACEh
	ENDS	SEG_PAGE

	GROUP	PHYSICAL MAIN, SEG_BYTE, SEG_WORD, SEG_DWORD, SEG_PAGE

	END	start
