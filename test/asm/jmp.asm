    IDEAL

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    

; 100

    jmp     short 82h       ; max backward disp 80h
    jmp     short 183h      ; max forward disp 7fh
    jmp     short 106h      ; zero disp

; 106

    jmp     near 88h        ; max backward disp 80h
    jmp     near 189h       ; max forward disp 7fh
    jmp     near 10Ch       ; zero disp

; 10c

    jmp     near 810Eh      ; max forward disp 7FFFh
    jmp     near 191h       ; min non-short forward disp 007Fh
    jmp     near 195h       ; forward 80h
    jmp     near 96h        ; shortest non-short backward disp 

; 118
back:

    jmp     near 0          ; min offset
    jmp     near 0ffffh     ; max offset


; 11e

    jmp     start           ; implicit short backward

    jmp     ahead           ; implicit short forward
    nop


    jmp     short ahead2    ; explicit short forward

ahead:
    nop

    jmp     short back      ; explicit short backward

ahead2:

; end

    ENDS    image
    END     start
