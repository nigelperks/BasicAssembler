	IDEAL
	MODEL 	tiny

	DATASEG
	EXTRN	datax:WORD

	UDATASEG
	EXTRN	udatax:WORD

	CODESEG
	EXTRN	codex:WORD
	ORG	100h
start:
	mov	ax, [codex]
	mov	ax, [datax]
	mov	[udatax], '*'
	mov	di, OFFSET _begin
	int	20h

	DATASEG
	mov	ax, [codex]
	mov	ax, [datax]

	UDATASEG
_begin	dd	?

	CODESEG
	nop

	END	start
