; two segments in one file, closed and reopened

    IDEAL

LF  equ     0Ah
CR  equ     0Dh

    SEGMENT code

    ORG     0100h

    ASSUME CS:code, DS:data, SS:data, ES:data

start:    
    mov     bx, 1       ; stdout
    mov     cx, 14      ; len
    mov     dx, offset msg
    mov     ah, 40h     ; DOS Write File or Device
    int     21h

    ENDS    code

    SEGMENT data

info	db	'load of information'

    ENDS    data

    SEGMENT code

    mov     al, 0       ; exit 0
    mov     ah, 4Ch     ; DOS End Program
    int     21h

    ENDS

    SEGMENT data

msg db      'Hello World!'
EOL db      CR,LF

    ENDS    data

    END     start
