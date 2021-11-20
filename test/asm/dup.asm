    IDEAL

LF  equ     0Ah
CR  equ     0Dh

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    
    mov     bx, 1       ; stdout
    mov     cx, 68      ; len
    mov     dx, offset msg
    mov     ah, 40h     ; DOS Write File or Device
    int     21h

    mov     al, 0       ; exit 0
    mov     ah, 4Ch     ; DOS End Program
    int     21h

msg db      4 dup (42)
    db      6 dup ('-')
    db      3 dup (CR, LF)
    db      5 dup (3 dup ('*'), 'YO!', 4 dup('!'))
    db      CR,LF

    ENDS    image

    END     start
