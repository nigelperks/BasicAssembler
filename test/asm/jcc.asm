    IDEAL

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    
    JA      target

    nop
    nop
    nop
    nop
    nop
early:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

target:

    JAE     target
    JB      target
    JBE     early
    JC      ahead
    JCXZ    ahead
    JE      target
    JZ      ahead
    JG      ahead
    JGE     target
    JL      target
    JLE     ahead
    JNA     target
    JNAE    ahead
    JNB     target
    JNBE    target
    JNC     ahead
    JNE     ahead
    JNG     target
    JNGE    ahead
    JNL     target
    JNLE    ahead
    JNO     ahead
    JNP     target
    JNS     target
    JNZ     ahead
    JO      ahead
    JP      target
    JPE     ahead
    JPO     ahead
    JS      ahead
    JZ      target

ahead:

; end

    ENDS    image
    END     start
