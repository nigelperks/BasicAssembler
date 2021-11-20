	IDEAL

	ASSUME	CS: SEG1

	; forward reference to segment/group name not supported
	SEGMENT	SEG1
	ENDS	SEG1
	GROUP	GROUP1 SEG1

	SEGMENT	SEG1
start:
	mov	ax, GROUP1

	ENDS	SEG1

	END	start
