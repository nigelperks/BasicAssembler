	IDEAL
	MODEL 	tiny

	CODESEG
	ORG	100h
start:
	mov	ax, [codex]
	mov	ax, [datax]
	int	20h
codex	dw	1234h

	DATASEG
	mov	ax, [codex]
	mov	ax, [datax]
datax	dw	5678h

	CODESEG
	nop

	END	start
