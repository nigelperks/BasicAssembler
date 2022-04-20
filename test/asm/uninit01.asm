; ORG is forbidden so that uninitialised data is a contiguous block at 0

	IDEAL

	SEGMENT	SEG1 UNINIT
	ORG	80h
	ENDS

	END
