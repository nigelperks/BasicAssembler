; implicit or no operands

    IDEAL

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    
    aaa
    aad
    aam
    aas
    cbw
    clc
    cld
    cli
    cmc
    cmpsb
    cmpsw
    cwd
    daa
    das
    hlt
    into
    iret
    iretw
    lahf
    lock
    lodsb
    lodsw
    movsb
    movsw
    nop
    popf
    popfw
    pushf
    pushfw
    ret
    retn
    sahf
    scasb
    scasw
    stc
    std
    sti
    stosb
    stosw
    wait
    xlatb

; end

    ENDS    image
    END     start
