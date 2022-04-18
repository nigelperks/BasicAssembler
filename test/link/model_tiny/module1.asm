	IDEAL
	MODEL 	tiny

	DATASEG
	EXTRN	datax:WORD

	CODESEG
	EXTRN	codex:WORD
	ORG	100h
start:
	mov	ax, [codex]
	mov	ax, [datax]
	int	20h

	DATASEG
	mov	ax, [codex]
	mov	ax, [datax]

	CODESEG
	nop

	END	start
