    IDEAL

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    
    call    start
    call    near 0
    call    near 0ffffh
    call    ahead
    jmp     near 0
    call    [word bx]
    call    [word di]
    call    [word bp+si-40h]
    call    [word 1234h]
    call    [word bx+9876h]
ahead:
    call    ax
    call    bx

; end

    ENDS    image
    END     start
