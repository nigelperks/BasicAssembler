	IDEAL
	JUMPS
	MODEL	tiny
	CODESEG
	ORG	100h
start:
	test ax, 1234h
        JA label1
        JAE label1
        JB label1
        JBE label1
        JC label1
        JE label1
        JZ label1
        JG label1
        JGE label1
        JL label1
        JLE label1
        JNA label1
        JNAE label1
        JNB label1
        JNBE label1
        JNC label1
        JNE label1
        JNG label1
        JNGE label1
        JNL label1
        JNLE label1
        JNO label1
        JNP label1
        JNS label1
        JNZ label1
        JO label1
        JP label1
        JPE label1
        JPO label1
        JS label1
        JZ label1


	db	80h DUP (0)
label1:
	int 20h
        JA start
        JAE start
        JB start
        JBE start
        JC start
        JE start
        JZ start
        JG start
        JGE start
        JL start
        JLE start
        JNA start
        JNAE start
        JNB start
        JNBE start
        JNC start
        JNE start
        JNG start
        JNGE start
        JNL start
        JNLE start

	int	20h
	END	start
