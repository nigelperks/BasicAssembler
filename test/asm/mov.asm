    IDEAL

CR      equ     0Dh
DISP8   equ     66h
DISP16  equ     1234h

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    

;   MOV     r8, r/m8

    mov     al, [bx+si]
    mov     ah, [bx+di]
    mov     bl, [bp+si]
    mov     bh, [bp+di]
    mov     cl, [si]
    mov     ch, [di]
    mov     dl, [1234h]
    mov     dh, [bx]
    mov     dl, [bp]

    mov     cl, [bx+si+1]
    mov     ch, [bx+di-1]
    mov     dl, [bp+si+7fh]
    mov     dh, [bp+di-80h]
    mov     al, [si+DISP8]
    mov     ah, [di-DISP8]
    mov     bl, [bp+23h]
    mov     bh, [bx-23h]

    mov     bl, [bx+si+80h]
    mov     bh, [bx+di-81h]
    mov     cl, [bp+si+100h]
    mov     ch, [bp+di-100h]
    mov     dl, [si+DISP16]
    mov     dh, [di-DISP16]
    mov     al, [bp+7fffh]
    mov     ah, [bx-8000h]

known   db  99h

    mov     bl, [bx+si+known]
    mov     cl, [bp+si+known]
    mov     dl, [si+known]
    mov     al, [bp+known]

    mov     al, al
    mov     ah, ah
    mov     bl, al
    mov     bh, ah
    mov     al, ch
    mov     ah, dl

;   MOV     r/m8, r8

    mov     [bx+si], al
    mov     [bx+di], ah
    mov     [bp+si], bl
    mov     [bp+di], bh
    mov     [si], cl
    mov     [di],ch 
    mov     [1234h], dl
    mov     [bx], dh
    mov     [bp], dl

    mov     [bx+si+1], cl
    mov     [bx+di-1], ch
    mov     [bp+si+7fh], dl
    mov     [bp+di-80h], dh
    mov     [si+DISP8], al
    mov     [di-DISP8], ah
    mov     [bp+23h], bl
    mov     [bx-23h], bh

    mov     [bx+si+80h], bl
    mov     [bx+di-81h], bh
    mov     [bp+si+100h], cl
    mov     [bp+di-100h], ch
    mov     [si+DISP16], dl
    mov     [di-DISP16], dh
    mov     [bp+7fffh], al
    mov     [bx-8000h], ah

    mov     [bx+si+known], bl
    mov     [bp+si+known], cl
    mov     [si+known], dl
    mov     [bp+known], al

;   MOV     AL, moffs8

    mov     al, [1234h]

;   MOV     AX, moffs16

    mov     ax, [9876h]

;   MOV     moffs8, AL

    mov     [var8], AL

;   MOV     moffs16, AX

    mov     [var16], AX

;   MOV     reg8, imm8

    mov     al, 12
    mov     ah, 34h
    mov     bl, '*'
    mov     bh, CR
    mov     cl, -1
    mov     ch, 0ffh
    mov     dl, 80h
    mov     dh, 7fh

;   MOV     reg16, imm16

    mov     ax, 12
    mov     bx, 3456h
    mov     cx, 7fffh
    mov     dx, 8000h
    mov     si, 0ffffh
    mov     di, -1
    mov     bp, -7fffh
    mov     sp, -8000h

;   MOV     r16, r/m16

    mov     ax, [bx+si]
    mov     bx, [bx+di]
    mov     cx, [bp+si]
    mov     dx, [bp+di]
    mov     si, [si]
    mov     di, [di]
    mov     bx, [1234h]
    mov     bp, [bx]

    mov     bp, [bp]

    mov     cx, [bx+si+1]
    mov     dx, [bx+di-1]
    mov     ax, [bp+si+7fh]
    mov     bx, [bp+di-80h]
    mov     di, [si+DISP8]
    mov     bp, [di-DISP8]
    mov     si, [bp+23h]
    mov     bx, [bx-23h]

    mov     bx, [bx+si+80h]
    mov     si, [bx+di-81h]
    mov     di, [bp+si+100h]
    mov     cx, [bp+di-100h]
    mov     dx, [si+DISP16]
    mov     bp, [di-DISP16]
    mov     ax, [bp+7fffh]
    mov     dx, [bx-8000h]

known2      dw  99h

    mov     bx, [bx+si+known2]
    mov     cx, [bp+si+known2]
    mov     dx, [si+known2]
    mov     ax, [bp+known2]

    mov     ax, ax
    mov     ax, cx
    mov     bx, ax
    mov     bx, di
    mov     si, bp
    mov     di, di

;   MOV     r/m16, r16

    mov     [bx+si], ax
    mov     [bx+di], bx
    mov     [bp+si], cx
    mov     [bp+di], dx
    mov     [si], si
    mov     [di], di
    mov     [1234h], bx
    mov     [bx], bp

    mov     [bp], di

    mov     [bx+si+1], cx
    mov     [bx+di-1], dx
    mov     [bp+si+7fh], ax
    mov     [bp+di-80h], bx
    mov     [si+DISP8], di
    mov     [di-DISP8], bp
    mov     [bp+23h], si
    mov     [bx-23h], bx

    mov     [bx+si+80h], bx
    mov     [bx+di-81h], si
    mov     [bp+si+100h], di
    mov     [bp+di-100h], cx
    mov     [si+DISP16], dx
    mov     [di-DISP16], bp
    mov     [bp+7fffh], ax
    mov     [bx-8000h], dx

    mov     [bx+si+known2], bx
    mov     [bp+si+known2], cx
    mov     [si+known2], dx
    mov     [bp+known2], ax

;   MOV     r/m16, Sreg

    mov     [bx+si], cs
    mov     [bx+di], ds
    mov     [bp+si], es
    mov     [bp+di], ss
    mov     [si], cs
    mov     [di], ds
    mov     [1234h], es
    mov     [bx], ss
    mov     [bp], ds

    mov     [bx+si+1], cs
    mov     [bx+di-1], ds
    mov     [bp+si+7fh], es
    mov     [bp+di-80h], ss
    mov     [si+DISP8], es
    mov     [di-DISP8], ss
    mov     [bp+23h], ds
    mov     [bx-23h], cs

    mov     [bx+si+80h], ss
    mov     [bx+di-81h], ds
    mov     [bp+si+100h], es
    mov     [bp+di-100h], es
    mov     [si+DISP16], cs
    mov     [di-DISP16], cs
    mov     [bp+7fffh], ds
    mov     [bx-8000h], ss

    mov     [bx+si+known2], cs
    mov     [bp+si+known2], es
    mov     [si+known2], ds
    mov     [bp+known2], ss

    mov     ax, ds
    mov     bx, cs
    mov     cx, es
    mov     dx, ss
    mov     si, ds
    mov     di, cs
    mov     bp, ss
    mov     bx, es

;   MOV     Sreg, r/m16

    mov     ds, [bx+si]
    mov     ds, [bx+di]
    mov     es, [bp+si]
    mov     ss, [bp+di]
    mov     es, [si]
    mov     ds, [di]
    mov     es, [1234h]
    mov     ss, [bx]
    mov     ds, [bp]

    mov     ss, [bx+si+1]
    mov     ds, [bx+di-1]
    mov     es, [bp+si+7fh]
    mov     ss, [bp+di-80h]
    mov     es, [si+DISP8]
    mov     ss, [di-DISP8]
    mov     ds, [bp+23h]
    mov     ds, [bx-23h]

    mov     ss, [bx+si+80h]
    mov     ds, [bx+di-81h]
    mov     es, [bp+si+100h]
    mov     es, [bp+di-100h]
    mov     ds, [si+DISP16]
    mov     es, [di-DISP16]
    mov     ds, [bp+7fffh]
    mov     ss, [bx-8000h]

    mov     ss, [bx+si+known2]
    mov     es, [bp+si+known2]
    mov     ds, [si+known2]
    mov     ss, [bp+known2]

    mov     ds, ax
    mov     ds, bx
    mov     es, cx
    mov     ss, dx
    mov     ds, si
    mov     ss, di
    mov     ss, bp
    mov     es, bx

;   MOV     r/m8, imm8

    mov     [BYTE bx+si], 0
    mov     [BYTE bx+di], 1
    mov     [BYTE bp+si], 7fh
    mov     [BYTE bp+di], 80h
    mov     [BYTE si], 0ffh
    mov     [BYTE di], 33h
    mov     [BYTE 1234h], -1
    mov     [BYTE bx], -7fh
    mov     [BYTE bp], -80h

    mov     [BYTE bx+si+1], 0
    mov     [BYTE bx+di-1], 1
    mov     [BYTE bp+si+7fh], 7fh
    mov     [BYTE bp+di-80h], 80h
    mov     [BYTE si+DISP8], 0ffh
    mov     [BYTE di-DISP8], 33h
    mov     [BYTE bp+23h], -1
    mov     [BYTE bx-23h], -80h

    mov     [BYTE bx+si+80h], 0
    mov     [BYTE bx+di-81h], 1
    mov     [BYTE bp+si+100h], 7fh
    mov     [BYTE bp+di-100h], 80h
    mov     [BYTE si+DISP16], 0ffh
    mov     [BYTE di-DISP16], 33h
    mov     [BYTE bp+7fffh], -1
    mov     [BYTE bx-8000h], -80h

    mov     [BYTE bx+si+known], 0
    mov     [BYTE bp+si+known], 1
    mov     [BYTE si+known], 80h
    mov     [BYTE bp+known], -32

;   MOV     r/m16, imm16

    mov     [WORD bx+si], 0
    mov     [WORD bx+di], 1
    mov     [WORD bp+si], 7fh
    mov     [WORD bp+di], 80h
    mov     [WORD si], 100h
    mov     [WORD di], 7fffh
    mov     [WORD 1234h], 8000h
    mov     [WORD bx], 0ffffh
    mov     [WORD bp], -1

    mov     [WORD bx+si+1], -80h
    mov     [WORD bx+di-1], -0ffh
    mov     [WORD bp+si+7fh], 0ffh
    mov     [WORD bp+di-80h], -100h
    mov     [WORD si+DISP8], -7fffh
    mov     [WORD di-DISP8], -8000h
    mov     [WORD bp+23h], -0ffffh
    mov     [WORD bx-23h], 1234h

    mov     [WORD bx+si+80h], 0
    mov     [WORD bx+di-81h], 1
    mov     [WORD bp+si+100h], 7fh
    mov     [WORD bp+di-100h], 80h
    mov     [WORD si+DISP16], 0ffh
    mov     [WORD di-DISP16], 100h
    mov     [WORD bp+7fffh], 8000h
    mov     [WORD bx-8000h], -8000h

    mov     [WORD bx+si+known], -1
    mov     [WORD bp+si+known], -1234h
    mov     [WORD si+known], -0ffffh
    mov     [WORD bp+known], 0deadh

; forward data

var8    db  0ffh
var16   dw  0faceh

    ENDS    image

    END     start
