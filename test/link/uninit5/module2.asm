	IDEAL

	SEGMENT	CODE2
	ASSUME	CS:GROUP2
subroutine:
	mov	ax, 4
	mov	si, OFFSET data2
	ret
	ENDS	CODE2

	SEGMENT	UDATA2 UNINIT
data2	DD	?
	ENDS	UDATA2

	GROUP	GROUP2 CODE2,UDATA2

	END
