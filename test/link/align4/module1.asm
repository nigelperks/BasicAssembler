	IDEAL

	SEGMENT	ALL PUBLIC
	ASSUME	CS:ALL,DS:ALL,ES:ALL,SS:ALL
start:
	EXTRN	_aa:WORD,_dd:BYTE,_bb:WORD,fini:BYTE
	mov	ax, [_aa]
	mov	cl, [_dd]
	mov	si, OFFSET _bb
	mov	di, OFFSET fini
	int	20h
	ENDS	ALL

	END	start
