; Test: segment open at end of file

	SEGMENT	main
	ASSUME	CS:main,DS:main,ES:main,SS:main
	ORG	100h
start:
	INT	20h

data:
	; 0 followed by nothing
	DB	0,0
	; decimal
	DW	0257,2570
	; H hex suffix
	DW	0h,2570h,0deadh,0FACEH
	; 0x hex prefix
	DW	0x0,0x2570,0xdead,0XFACE
	; 0o octal prefix
	DB	0o0,0o120,0o377,0O120
	; 0b with hex suffix
	DW	0bh,0beefh,0BH,0B0C0H
	; 0b binary prefix
	DB	0b0,0b10101011,0B11110000
	; readability punctuation
	DQ	0xDEAD_FACE_BEEF_F00D

	ENDS	main

	END	start
