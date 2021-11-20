    IDEAL

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    
    jmp     [word bx]
    jmp     [word di]
    jmp     [word bp+si-40h]
    jmp     [word 1234h]
    jmp     [word bx+9876h]
    jmp     ax
    jmp     bx

; end

    ENDS    image
    END     start
