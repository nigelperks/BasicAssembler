; close and reopen one segment in one file

    IDEAL

LF  equ     0Ah
CR  equ     0Dh

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    
    mov     bx, 1       ; stdout
    mov     cx, 14      ; len
    mov     dx, offset msg
    mov     ah, 40h     ; DOS Write File or Device
    int     21h

    ENDS

    SEGMENT image

    mov     al, 0       ; exit 0
    mov     ah, 4Ch     ; DOS End Program
    int     21h

msg db      'Hello World!',CR,LF

    ENDS    image

    END     start
