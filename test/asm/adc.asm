; ADC test
;
; Main distinctive requirement is to test sign-extended ADC r/m16, imm8

    IDEAL

CR      equ     0Dh
DISP8   equ     66h
DISP16  equ     1234h

KONSTANT    equ     68h

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    

;   ADC     AL, imm8

    adc     al, 0
    adc     al, 7fh
    adc     al, 80h
    adc     al, 0ffh
    adc     al, -1
    adc     al, -80h
    adc     al, -0ffh

;   ADC     AX, imm16

    adc     ax, 0
    adc     ax, 7fh
    adc     ax, 80h
    adc     ax, 0ffh
    adc     ax, -1
    adc     ax, -80h
    adc     ax, -0ffh

    adc     ax, 100h
    adc     ax, 7fffh
    adc     ax, 8000h
    adc     ax, 0ffffh
    adc     ax, -100h
    adc     ax, -8000h
    adc     ax, -0ffffh

;   ADC     r8, r/m8

    adc     al, [bx]
    adc     ch, [bp]
    adc     dh, [bx+si]

    adc     cl, [bp-8]
    adc     al, [si+20h]

    adc     dh, [bx+di+1234h]

    adc     al, al
    adc     bh, dl

;   ADC     r/m8, r8

    adc     [bx], dh
    adc     [bp+di], ch

    adc     [si+7fh], al
    adc     [bp+di+60h], ch

    adc     [bx+di+1234h], dh

;   ADC     r16, r/m16

    adc     ax, [bx]
    adc     cx, [bp]
    adc     dx, [bx+si]

    adc     di, [bp-8]
    adc     si, [si+20h]

    adc     bp, [bx+di+1234h]

    adc     sp, ax
    adc     bx, dx
    adc     bp, si

;   ADC     r/m16, r16

    adc     [bx], bp
    adc     [bp+di], cx

    adc     [si+7fh], si
    adc     [bp+di+60h], ax

    adc     [bx+di+1234h], di

;   ADC     r/m8, imm8

    adc     [byte bp+di], 34h
    adc     [byte bx+20h], -1
    adc     [byte bp+1234h], 7fh
    adc     al, 20h
    adc     dl, 42h

;   ADC     r/m16, imm16

    adc     [word bp+di], 3412h
    adc     [word bx+20h], -81h
    adc     [word bp+1234h], 80h
    adc     si, -100h

;   ADC     r/m16, imm8

    adc     [word si], KONSTANT
    adc     [word bp+1234h], 7fh
    adc     cx, '*'
    adc     dx, 42h

    ENDS    image

    END     start


