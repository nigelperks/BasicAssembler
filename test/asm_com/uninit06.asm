; UDATASEG for uninitialised data in TINY model

	IDEAL
	MODEL	TINY

	UDATASEG
_begin	DW	?
	DW	?
	DD	?
_end:

	CODESEG
	ORG	100h
start:
	mov	si, OFFSET _begin
	mov	di, OFFSET _end
	mov	ax, [_begin]

	END	start
