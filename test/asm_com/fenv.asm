	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN
	ORG	100h
start:
	wait
	wait
	fldenv	[1234h]

	wait
	wait
	fstenv	[1234h]

	fnstenv	[1234h]

	wait
	wait
	frstor	[1234h]

	wait
	wait
	fsave	[1234h]

	fnsave	[1234h]

	int	20h
	ENDS	MAIN
	END	start
