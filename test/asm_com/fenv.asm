	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN
	ORG	100h
start:
	fldenv	[1234h]

	wait
	fldenv	[1234h]

	fstenv	[1234h]

	wait
	fstenv	[1234h]

	fnstenv	[1234h]

	wait
	fnstenv	[1234h]

	frstor	[1234h]

	wait
	frstor	[1234h]

	fsave	[1234h]

	wait
	fsave	[1234h]

	fnsave	[1234h]

	wait
	fnsave	[1234h]

	int	20h
	ENDS	MAIN
	END	start
