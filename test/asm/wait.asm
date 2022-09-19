; Test explicit and implicit WAIT encoding and decoding.

	IDEAL
	SEGMENT	MAIN
	ASSUME	CS:MAIN,DS:MAIN,ES:MAIN,SS:MAIN
	ORG	100h
start:
	jmp	fini	; force resizing pass

	P8086	; implicit wait for 8086

	FADD	; implicit wait
	FNCLEX	; explicitly no wait
	FCLEX	; explicit wait

	; explicit WAIT should always be encoded
	FWAIT
	FADD	; implicit wait
	FWAIT
	FNCLEX	; explicitly no wait
	FWAIT
	FCLEX	; explicit wait
	FWAIT

	P286N	; no implicit wait for 8086

	FADD	; no implicit wait
	FNCLEX	; explicitly no wait
	FCLEX	; explicit wait

	; explicit WAIT should always be encoded
	FWAIT
	FADD	; no implicit wait
	FWAIT
	FNCLEX	; explicitly no wait
	FWAIT
	FCLEX	; explicit wait
	FWAIT

fini:
	int	20h
	ENDS	MAIN
	END	start
