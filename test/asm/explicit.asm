    IDEAL

LF  equ     0Ah
CR  equ     0Dh

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    
    mov     ax, [es:_x]
    mov     dx, [cs:902h]
    mov     cx, [es:_y]     ; TASM generates override
    mov     bx, [ds:_y]     ; TASM suppresses override

_y	dw	5678h

    ENDS    image

    SEGMENT data

_x	dw	1234h

    ENDS    data

    END     start
