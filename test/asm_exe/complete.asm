    IDEAL

    SEGMENT image
    ASSUME CS:image, DS:image, SS:image, ES:image

start:

    ;*************** OPCODES WITH NO EXPLICIT OPERANDS ***************

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
    iret
    lahf
    lodsb
    lodsw
    movsb
    movsw
    nop
    popf
    pushf
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

FREDDY equ 1234h

    mov     ax, bx

    ;*************** ADC WITH FULL ADDRESSING MODE COVERAGE ***************

    ; 1. ADC r/m8, r8

    ; 1a. ADC r/m8, AL

    ; 1a0. ADC r/m8 mod 0, AL

    adc     [bx+si], al
    adc     [bx+di], al
    adc     [bp+si], al
    adc     [bp+di], al
    adc     [si], al
    adc     [di], al
    adc     [7788h], al
    adc     [bx], al

    ; 1a1. ADC r/m8 disp8, AL

    adc     [bx+si+7fh], al
    adc     [bx+di+7fh], al
    adc     [bp+si+7fh], al
    adc     [bp+di+7fh], al
    adc     [si+7fh], al
    adc     [di+7fh], al
    adc     [bp+7fh], al
    adc     [bx+7fh], al

    adc     [bx+si-80h], al
    adc     [bx+di-80h], al
    adc     [bp+si-80h], al
    adc     [bp+di-80h], al
    adc     [si-80h], al
    adc     [di-80h], al
    adc     [bp-80h], al
    adc     [bx-80h], al

    ; 1a2. ADC r/m8 disp16, AL

    adc     [bx+si+80h], al
    adc     [bx+di+81h], al
    adc     [bp+si+7fffh], al
    adc     [bp+di+7ffeh], al
    adc     [si+80h], al
    adc     [di+81h], al
    adc     [bp+7fffh], al
    adc     [bx+7ffeh], al

    adc     [bx+si-81h], al
    adc     [bx+di-0ffh], al
    adc     [bp+si-100h], al
    adc     [bp+di-8000h], al
    adc     [si-81h], al
    adc     [di-0ffh], al
    adc     [bp-100h], al
    adc     [bx-8000h], al

    ; 1a3. ADC r/m8 mod 3, AL

    adc     al, al
    adc     cl, al
    adc     dl, al
    adc     bl, al
    adc     ah, al
    adc     ch, al
    adc     dh, al
    adc     bh, al

    ; 1b. ADC r/m8, other r8

    ; 1b0. ADC r/m8 mod 0, other r8

    adc     [bx+si], cl
    adc     [bx+di], dl
    adc     [bp+si], bl
    adc     [bp+di], ah
    adc     [si], ch
    adc     [di], dh
    adc     [7788h], bh
    adc     [bx], cl

    ; 1b1. ADC r/m8 disp8, other r8

    adc     [bx+si+7fh], dl
    adc     [bx+di+7fh], bl
    adc     [bp+si+7fh], ah
    adc     [bp+di+7fh], ch
    adc     [si+7fh], dh
    adc     [di+7fh], bh
    adc     [bp+7fh], cl
    adc     [bx+7fh], dl

    adc     [bx+si-80h], bl
    adc     [bx+di-80h], ah
    adc     [bp+si-80h], ch
    adc     [bp+di-80h], dh
    adc     [si-80h], bh
    adc     [di-80h], cl
    adc     [bp-80h], dl
    adc     [bx-80h], bl

    ; 1b2. ADC r/m8 disp16, other r8

    adc     [bx+si+80h], ah
    adc     [bx+di+81h], ch
    adc     [bp+si+7fffh], dh
    adc     [bp+di+7ffeh], bh
    adc     [si+80h], cl
    adc     [di+81h], dl
    adc     [bp+7fffh], bl
    adc     [bx+7ffeh], ah

    adc     [bx+si-81h], ch
    adc     [bx+di-0ffh], dh
    adc     [bp+si-100h], bh
    adc     [bp+di-8000h], cl
    adc     [si-81h], dl
    adc     [di-0ffh], bl
    adc     [bp-100h], ah
    adc     [bx-8000h], ch

    ; 1b3. ADC r/m8 mod 3, other r8

    adc     al, dh
    adc     cl, bh
    adc     dl, dl
    adc     bl, cl
    adc     ah, bl
    adc     ch, ch
    adc     dh, dh
    adc     bh, ah

    ; 2. ADC r/m16, r16

    ; 2a. ADC r/m16, AX

    ; 2a0. ADC r/m16 mod 0, AX

    adc     [bx+si], ax
    adc     [bx+di], ax
    adc     [bp+si], ax
    adc     [bp+di], ax
    adc     [si], ax
    adc     [di], ax
    adc     [7788h], ax
    adc     [bx], ax

    ; 2a1. ADC r/m16 disp8, AX

    adc     [bx+si+7fh], ax
    adc     [bx+di+7fh], ax
    adc     [bp+si+7fh], ax
    adc     [bp+di+7fh], ax
    adc     [si+7fh], ax
    adc     [di+7fh], ax
    adc     [bp+7fh], ax
    adc     [bx+7fh], ax

    adc     [bx+si-80h], ax
    adc     [bx+di-80h], ax
    adc     [bp+si-80h], ax
    adc     [bp+di-80h], ax
    adc     [si-80h], ax
    adc     [di-80h], ax
    adc     [bp-80h], ax
    adc     [bx-80h], ax

    ; 2a2. ADC r/m16 disp16, AX

    adc     [bx+si+80h], ax
    adc     [bx+di+81h], ax
    adc     [bp+si+7fffh], ax
    adc     [bp+di+7ffeh], ax
    adc     [si+80h], ax
    adc     [di+81h], ax
    adc     [bp+7fffh], ax
    adc     [bx+7ffeh], ax

    adc     [bx+si-81h], ax
    adc     [bx+di-0ffh], ax
    adc     [bp+si-100h], ax
    adc     [bp+di-8000h], ax
    adc     [si-81h], ax
    adc     [di-0ffh], ax
    adc     [bp-100h], ax
    adc     [bx-8000h], ax

    ; 2a3. ADC r/m16 mod 3, AX

    adc     ax, ax
    adc     cx, ax
    adc     dx, ax
    adc     bx, ax
    adc     sp, ax
    adc     bp, ax
    adc     si, ax
    adc     di, ax

    ; 2b. ADC r/m16, other r16

    ; 2b0. ADC r/m16 mod 0, other r16

    adc     [bx+si], cx
    adc     [bx+di], dx
    adc     [bp+si], bx
    adc     [bp+di], sp
    adc     [si], bp
    adc     [di], si
    adc     [7788h], di
    adc     [bx], cx

    ; 2b1. ADC r/m16 disp8, other r16

    adc     [bx+si+7fh], dx
    adc     [bx+di+7fh], bx
    adc     [bp+si+7fh], sp
    adc     [bp+di+7fh], bp
    adc     [si+7fh], si
    adc     [di+7fh], di
    adc     [bp+7fh], cx
    adc     [bx+7fh], dx

    adc     [bx+si-80h], bx
    adc     [bx+di-80h], sp
    adc     [bp+si-80h], bp
    adc     [bp+di-80h], si
    adc     [si-80h], di
    adc     [di-80h], cx
    adc     [bp-80h], dx
    adc     [bx-80h], bx

    ; 2b2. ADC r/m16 disp16, other r16

    adc     [bx+si+80h], sp
    adc     [bx+di+81h], bp
    adc     [bp+si+7fffh], si
    adc     [bp+di+7ffeh], di
    adc     [si+80h], cx
    adc     [di+81h], dx
    adc     [bp+7fffh], bx
    adc     [bx+7ffeh], sp

    adc     [bx+si-81h], bp
    adc     [bx+di-0ffh], si
    adc     [bp+si-100h], di
    adc     [bp+di-8000h], cx
    adc     [si-81h], dx
    adc     [di-0ffh], bx
    adc     [bp-100h], sp
    adc     [bx-8000h], bp

    ; 2b3. ADC r/m16 mod 3, other r16

    adc     ax, cx
    adc     cx, bx
    adc     dx, dx
    adc     bx, sp
    adc     sp, bp
    adc     bp, si
    adc     si, di
    adc     di, di

    ; 3. ADC r8, r/m8

    ; 3a. ADC AL, r/m8

    ; 3a0. ADC AL, r/m8 mod 0

    adc     al, [bx+si]
    adc     al, [bx+di]
    adc     al, [bp+si]
    adc     al, [bp+di]
    adc     al, [si]
    adc     al, [di]
    adc     al, [7788h]
    adc     al, [bx]

    ; 3a1. ADC AL, r/m8 disp8

    adc     al, [bx+si+7fh]
    adc     al, [bx+di+7fh]
    adc     al, [bp+si+7fh]
    adc     al, [bp+di+7fh]
    adc     al, [si+7fh]
    adc     al, [di+7fh]
    adc     al, [bp+7fh]
    adc     al, [bx+7fh]

    adc     al, [bx+si-80h]
    adc     al, [bx+di-80h]
    adc     al, [bp+si-80h]
    adc     al, [bp+di-80h]
    adc     al, [si-80h]
    adc     al, [di-80h]
    adc     al, [bp-80h]
    adc     al, [bx-80h]

    ; 3a2. ADC AL, r/m8 disp16

    adc     al, [bx+si+80h]
    adc     al, [bx+di+81h]
    adc     al, [bp+si+7fffh]
    adc     al, [bp+di+7ffeh]
    adc     al, [si+80h]
    adc     al, [di+81h]
    adc     al, [bp+7fffh]
    adc     al, [bx+7ffeh]

    adc     al, [bx+si-81h]
    adc     al, [bx+di-0ffh]
    adc     al, [bp+si-100h]
    adc     al, [bp+di-8000h]
    adc     al, [si-81h]
    adc     al, [di-0ffh]
    adc     al, [bp-100h]
    adc     al, [bx-8000h]

    ; 3a3. ADC AL, r/m8 mod 3

    adc     al, al
    adc     al, cl
    adc     al, dl
    adc     al, bl
    adc     al, ah
    adc     al, ch
    adc     al, dh
    adc     al, bh

    ; 3b. ADC other r8, r/m8

    ; 3b0. ADC other r8, r/m8 mod 0

    adc     cl, [bx+si]
    adc     dl, [bx+di]
    adc     bl, [bp+si]
    adc     ah, [bp+di]
    adc     ch, [si]
    adc     dh, [di]
    adc     bh, [7788h]
    adc     cl, [bx]

    ; 3b1. ADC other r8, r/m8 disp8

    adc     dl, [bx+si+7fh]
    adc     bl, [bx+di+7fh]
    adc     ah, [bp+si+7fh]
    adc     ch, [bp+di+7fh]
    adc     dh, [si+7fh]
    adc     bh, [di+7fh]
    adc     cl, [bp+7fh]
    adc     dl, [bx+7fh]

    adc     bl, [bx+si-80h]
    adc     ah, [bx+di-80h]
    adc     ch, [bp+si-80h]
    adc     dh, [bp+di-80h]
    adc     bh, [si-80h]
    adc     cl, [di-80h]
    adc     dl, [bp-80h]
    adc     bl, [bx-80h]

    ; 3b2. ADC other r8, r/m8 disp16

    adc     ah, [bx+si+80h]
    adc     ch, [bx+di+81h]
    adc     dh, [bp+si+7fffh]
    adc     bh, [bp+di+7ffeh]
    adc     cl, [si+80h]
    adc     dl, [di+81h]
    adc     bl, [bp+7fffh]
    adc     ah, [bx+7ffeh]

    adc     ch, [bx+si-81h]
    adc     dh, [bx+di-0ffh]
    adc     bh, [bp+si-100h]
    adc     cl, [bp+di-8000h]
    adc     dl, [si-81h]
    adc     bl, [di-0ffh]
    adc     ah, [bp-100h]
    adc     ch, [bx-8000h]

    ; 3b3. ADC other r8, r/m8 mod 3

    adc     dh, al
    adc     bh, cl
    adc     dl, dl
    adc     cl, bl
    adc     bl, ah
    adc     ch, dh
    adc     dh, ah
    adc     ah, ah

    ; 4. ADC r16, r/m16

    ; 4a. ADC AX, r/m16

    ; 4a0. ADC AX, r/m16 mod 0

    adc     ax, [bx+si]
    adc     ax, [bx+di]
    adc     ax, [bp+si]
    adc     ax, [bp+di]
    adc     ax, [si]
    adc     ax, [di]
    adc     ax, [7788h]
    adc     ax, [bx]

    ; 4a1. ADC AX, r/m16 disp8

    adc     ax, [bx+si+7fh]
    adc     ax, [bx+di+7fh]
    adc     ax, [bp+si+7fh]
    adc     ax, [bp+di+7fh]
    adc     ax, [si+7fh]
    adc     ax, [di+7fh]
    adc     ax, [bp+7fh]
    adc     ax, [bx+7fh]

    adc     ax, [bx+si-80h]
    adc     ax, [bx+di-80h]
    adc     ax, [bp+si-80h]
    adc     ax, [bp+di-80h]
    adc     ax, [si-80h]
    adc     ax, [di-80h]
    adc     ax, [bp-80h]
    adc     ax, [bx-80h]

    ; 4a2. ADC AX, r/m16 disp16

    adc     ax, [bx+si+80h]
    adc     ax, [bx+di+81h]
    adc     ax, [bp+si+7fffh]
    adc     ax, [bp+di+7ffeh]
    adc     ax, [si+80h]
    adc     ax, [di+81h]
    adc     ax, [bp+7fffh]
    adc     ax, [bx+7ffeh]

    adc     ax, [bx+si-81h]
    adc     ax, [bx+di-0ffh]
    adc     ax, [bp+si-100h]
    adc     ax, [bp+di-8000h]
    adc     ax, [si-81h]
    adc     ax, [di-0ffh]
    adc     ax, [bp-100h]
    adc     ax, [bx-8000h]

    ; 4a3. ADC AX, r/m16 mod 3

    adc     ax, ax
    adc     ax, cx
    adc     ax, dx
    adc     ax, bx
    adc     ax, sp
    adc     ax, bp
    adc     ax, si
    adc     ax, di

    ; 4b. ADC other r16, r/m16

    ; 4b0. ADC other r16, r/m16 mod 0

    adc     cx, [bx+si]
    adc     dx, [bx+di]
    adc     bx, [bp+si]
    adc     sp, [bp+di]
    adc     bp, [si]
    adc     si, [di]
    adc     di, [7788h]
    adc     cx, [bx]

    ; 4b1. ADC other r16, r/m16 disp8

    adc     dx, [bx+si+7fh]
    adc     bx, [bx+di+7fh]
    adc     sp, [bp+si+7fh]
    adc     bp, [bp+di+7fh]
    adc     si, [si+7fh]
    adc     di, [di+7fh]
    adc     cx, [bp+7fh]
    adc     dx, [bx+7fh]

    adc     bx, [bx+si-80h]
    adc     sp, [bx+di-80h]
    adc     bp, [bp+si-80h]
    adc     si, [bp+di-80h]
    adc     di, [si-80h]
    adc     cx, [di-80h]
    adc     dx, [bp-80h]
    adc     bx, [bx-80h]

    ; 4b2. ADC other r16, r/m16 disp16

    adc     sp, [bx+si+80h]
    adc     bp, [bx+di+81h]
    adc     si, [bp+si+7fffh]
    adc     di, [bp+di+7ffeh]
    adc     cx, [si+80h]
    adc     dx, [di+81h]
    adc     bx, [bp+7fffh]
    adc     sp, [bx+7ffeh]

    adc     bp, [bx+si-81h]
    adc     si, [bx+di-0ffh]
    adc     di, [bp+si-100h]
    adc     cx, [bp+di-8000h]
    adc     dx, [si-81h]
    adc     bx, [di-0ffh]
    adc     sp, [bp-100h]
    adc     bp, [bx-8000h]

    ; 4b3. ADC other r16, r/m16 mod 3

    adc     cx, ax
    adc     dx, cx
    adc     bx, dx
    adc     sp, bx
    adc     bp, sp
    adc     di, bp
    adc     si, si
    adc     si, di

    ; 5. ADC AL, imm8

    adc     al, '0'

    ; 6. ADC AX, imm16

    adc     ax, 1234h

    ; 7. ADC r/m8, imm8

    ; 7a0. ADC r/m8 mod 0, imm8

    adc     [byte ptr bx+si], 7fh
    adc     [byte ptr bx+di], 7fh
    adc     [byte ptr bp+si], 7fh
    adc     [byte ptr bp+di], 7fh
    adc     [byte ptr si], 7fh
    adc     [byte ptr di], 0ffh
    adc     [byte ptr 7788h], 80h
    adc     [byte ptr bx], -80h

    ; 7a1. ADC r/m8 disp8, imm8

    adc     [byte ptr bx+si+7fh], 7fh
    adc     [byte ptr bx+di+7fh], 7fh
    adc     [byte ptr bp+si+7fh], 7fh
    adc     [byte ptr bp+di+7fh], 7fh
    adc     [byte ptr si+7fh], 7fh
    adc     [byte ptr di+7fh], 7fh
    adc     [byte ptr bp+7fh], 7fh
    adc     [byte ptr bx+7fh], 7fh

    adc     [byte ptr bx+si-80h], 7fh
    adc     [byte ptr bx+di-80h], 7fh
    adc     [byte ptr bp+si-80h], 7fh
    adc     [byte ptr bp+di-80h], 7fh
    adc     [byte ptr si-80h], 7fh
    adc     [byte ptr di-80h], 0ffh
    adc     [byte ptr bp-80h], 80h
    adc     [byte ptr bx-80h], -80h

    ; 7a2. ADC r/m8 disp16, imm8

    adc     [byte ptr bx+si+80h], 7fh
    adc     [byte ptr bx+di+81h], 7fh
    adc     [byte ptr bp+si+7fffh], 7fh
    adc     [byte ptr bp+di+7ffeh], 7fh
    adc     [byte ptr si+80h], 7fh
    adc     [byte ptr di+81h], 7fh
    adc     [byte ptr bp+7fffh], 7fh
    adc     [byte ptr bx+7ffeh], 7fh

    adc     [byte ptr bx+si-81h], 7fh
    adc     [byte ptr bx+di-0ffh], 7fh
    adc     [byte ptr bp+si-100h], 7fh
    adc     [byte ptr bp+di-8000h], 7fh
    adc     [byte ptr si-81h], 7fh
    adc     [byte ptr di-0ffh], 0ffh
    adc     [byte ptr bp-100h], 80h
    adc     [byte ptr bx-8000h], -80h

    ; 7a3. ADC r/m8 mod 3, imm8

    adc     al, 7fh
    adc     cl, 7fh
    adc     dl, 7fh
    adc     bl, 7fh
    adc     ah, 7fh
    adc     ch, 0ffh
    adc     dh, 80h
    adc     bh, -80h

    ; 8. ADC r/m16, imm16

    ; 8a0. ADC r/m16 mod 0, imm16

    adc     [word ptr bx+si], 100h
    adc     [word ptr bx+di], 7fffh
    adc     [word ptr bp+si], 8000h
    adc     [word ptr bp+di], 1234h
    adc     [word ptr si], -100h
    adc     [word ptr di], -7fffh
    adc     [word ptr 7788h], -8000h
    adc     [word ptr bx], 1234h

    ; 8a1. ADC r/m16 disp8, imm16

    adc     [word ptr bx+si+7fh], 100h
    adc     [word ptr bx+di+7fh], 7fffh
    adc     [word ptr bp+si+7fh], 8000h
    adc     [word ptr bp+di+7fh], 1234h
    adc     [word ptr si+7fh], -100h
    adc     [word ptr di+7fh], -7fffh
    adc     [word ptr bp+7fh], -8000h
    adc     [word ptr bx+7fh], 1234h

    adc     [word ptr bx+si-80h], 100h
    adc     [word ptr bx+di-80h], 7fffh
    adc     [word ptr bp+si-80h], 8000h
    adc     [word ptr bp+di-80h], 1234h
    adc     [word ptr si-80h], -100h
    adc     [word ptr di-80h], -7fffh
    adc     [word ptr bp-80h], -8000h
    adc     [word ptr bx-80h], 1234h

    ; 8a2. ADC r/m16 disp16, imm16

    adc     [word ptr bx+si+80h], 100h
    adc     [word ptr bx+di+81h], 7fffh
    adc     [word ptr bp+si+7fffh], 8000h
    adc     [word ptr bp+di+7ffeh], 1234h
    adc     [word ptr si+80h], -100h
    adc     [word ptr di+81h], -7fffh
    adc     [word ptr bp+7fffh], -8000h
    adc     [word ptr bx+7ffeh], 1234h

    adc     [word ptr bx+si-81h], 100h
    adc     [word ptr bx+di-0ffh], 7fffh
    adc     [word ptr bp+si-100h], 8000h
    adc     [word ptr bp+di-8000h], 1234h
    adc     [word ptr si-81h], -100h
    adc     [word ptr di-0ffh], -7fffh
    adc     [word ptr bp-100h], -8000h
    adc     [word ptr bx-8000h], 1234h

    ; 8a3. ADC r/m16 mod 3, imm16

    adc     ax, 100h
    adc     cx, 7fffh
    adc     dx, 8000h
    adc     bx, 1234h
    adc     sp, -100h
    adc     bp, -7fffh
    adc     si, -8000h
    adc     di, 1234h

    ; 9. ADC r/m16, imm8

    ; 9a. ADC DX, imm8: 83 D2 xx

    adc     dx, 0
    adc     dx, 7fh
    adc     dx, -1
    adc     dx, -7fh
    adc     dx, -80h

    ; 9b. ADC DX, imm16: 81 D2 xx xx

    adc     dx, 80h
    adc     dx, 0ffh
    adc     dx, 100h
    adc     dx, -81h

    ; 9c. Symbols

    ; 9c1. Define before use

CR  equ     0dh

    adc     dx, CR



    ;*********** OPERATORS WITH SELECTED ADDRESSING MODE COVERAGE ***********

    ;******** ADD: SELECTED MODES

    ; 1. ADD r/m8, r8

    ; 1a. ADD r/m8, AL

    add     [bx+si], al
    add     [bx+di-80h], al
    add     [bp+7fffh], al
    add     al, al
    add     bh, al

    ; 1b. ADD r/m8, other r8

    add     [bx+si], dl
    add     [bx+di-80h], cl
    add     [bp+7fffh], bl
    add     al, dh
    add     bh, bh

    ; 2. ADD r/m16, r16

    ; 2a. ADD r/m16, AX

    add     [bp+di], ax
    add     [7788h], ax
    add     [bx+7fh], ax
    add     [bp+si+7fffh], ax
    add     ax, ax
    add     sp, ax

   ; 2b. ADD r/m16, other r16

    add     [bp+di], dx
    add     [7788h], cx
    add     [bx+7fh], bx
    add     [bp+si+7fffh], si
    add     ax, dx
    add     sp, sp

    ; 3. ADD r8, r/m8

    ; 3a. ADD AL, r/m8

    add     al, [bx+si]
    add     al, [bx+di-80h]
    add     al, [bp+7fffh]
    add     al, al
    add     al, bh

    ; 3b. ADD other r8, r/m8

    add     dl, [bx+si]
    add     cl, [bx+di-80h]
    add     bl, [bp+7fffh]
    add     dh, al
    add     dh, dh

    ; 4. ADD r16, r/m16

    ; 4a. ADD AX, r/m16

    add     ax, [bp+di]
    add     ax, [7788h]
    add     ax, [bx+7fh]
    add     ax, [bp+si+7fffh]
    add     ax, sp

    ; 4b. ADD other r16, r/m16

    add     dx, [bp+di]
    add     cx, [7788h]
    add     bx, [bx+7fh]
    add     si, [bp+si+7fffh]
    add     dx, sp

    ; 5. ADD AL, imm8

    add     al, 20h

    ; 6. ADD AX, imm16

    add     ax, 9922h

    ; 7. ADD r/m8, imm8

    add     [byte ptr bx+si], 7fh
    add     [byte ptr bx+di-80h], 7fh
    add     [byte ptr bp+7fffh], 7fh
    add     al, 7fh
    add     bh, 7fh

    ; 8. ADD r/m16, imm16

    add     [word ptr bp+di], 100h
    add     [word ptr 7788h], 100h
    add     [word ptr bx+7fh], 100h
    add     [word ptr bp+si+7fffh], 100h
    add     ax, 100h
    add     sp, 100h

   ; 9. ADD r/m16, imm8

    add     dx, 0
    add     dx, 7fh

    ;******** XCHG

    ; 1. XCHG AX, r16

    xchg    ax, ax
    xchg    ax, cx
    xchg    ax, dx
    xchg    ax, bx
    xchg    ax, sp
    xchg    ax, bp
    xchg    ax, si
    xchg    ax, di

    ; 2. XCHG r16, AX

    xchg    ax, ax
    xchg    cx, ax
    xchg    dx, ax
    xchg    bx, ax
    xchg    sp, ax
    xchg    bp, ax
    xchg    si, ax
    xchg    di, ax

    ; 3. XCHG r/m8, r8 = XCHG r8, r/m8

    xchg    al, al
    xchg    al, cl
    xchg    cl, al
    xchg    [1234h], al
    xchg    [1234h], cl
    xchg    al, [1234h]
    xchg    cl, [1234h]

    ; 4. XCHG r/m16, r16 = XCHG r16, r/m16

    xchg    [1234h], ax
    xchg    [1234h], cx
    xchg    ax, [1234h]
    xchg    cx, [1234h]
    xchg    dx, [bp+di+07fh]
    xchg    [bp+di+07fh], dx
    xchg    dx, sp
    xchg    si, bp

    ;******** CALL

    ; 1. CALL rel16

    call    gap0
gap0:

    call    gap1
    nop
gap1:

    call    gap0

    ; 2. CALL r/m16

    ; 2a0. CALL r/m16 mod 0

    call    [word ptr bx+si]
    call    [word ptr bx+di]
    call    [word ptr bp+si]
    call    [word ptr bp+di]
    call    [word ptr si]
    call    [word ptr di]
    call    [word ptr 7788h]
    call    [word ptr bx]

    ; 2a1. CALL r/m16 disp8

    call    [word ptr bx+si+7fh]
    call    [word ptr bx+di+7fh]
    call    [word ptr bp+si+7fh]
    call    [word ptr bp+di+7fh]
    call    [word ptr si+7fh]
    call    [word ptr di+7fh]
    call    [word ptr bp+7fh]
    call    [word ptr bx+7fh]

    call    [word ptr bx+si-80h]
    call    [word ptr bx+di-80h]
    call    [word ptr bp+si-80h]
    call    [word ptr bp+di-80h]
    call    [word ptr si-80h]
    call    [word ptr di-80h]
    call    [word ptr bp-80h]
    call    [word ptr bx-80h]

    ; 2a2. CALL r/m16 disp16

    call    [word ptr bx+si+80h]
    call    [word ptr bx+di+81h]
    call    [word ptr bp+si+7fffh]
    call    [word ptr bp+di+7ffeh]
    call    [word ptr si+80h]
    call    [word ptr di+81h]
    call    [word ptr bp+7fffh]
    call    [word ptr bx+7ffeh]

    call    [word ptr bx+si-81h]
    call    [word ptr bx+di-0ffh]
    call    [word ptr bp+si-100h]
    call    [word ptr bp+di-8000h]
    call    [word ptr si-81h]
    call    [word ptr di-0ffh]
    call    [word ptr bp-100h]
    call    [word ptr bx-8000h]

    ; 2a3. CALL r/m16 mod 3

    call    ax
    call    cx
    call    dx
    call    bx
    call    sp
    call    bp
    call    si
    call    di

    ;******** CMP

    cmp     al, 3
    cmp     ax, 3
    cmp     [byte ptr bp], 78h
    cmp     [word ptr bp], 7812h
    cmp     [word ptr bp], 78h

    cmp     [bx+si+7fh], ch
    cmp     [bx+si+7fh], cx
    cmp     bh, [di-80h]
    cmp     bx, [di-80h]

    cmp     dx, 78h
    cmp     dl, 78h
    cmp     dx, 7812h
    cmp     bl, bl
    cmp     bx, cx

    ;******** DEC

    ; 1. DEC r16

    dec     ax
    dec     cx
    dec     dx
    dec     bx
    dec     sp
    dec     bp
    dec     si
    dec     di

    ; 2. DEC r/m8

    dec     [byte bp+di]
    dec     [byte bp+di-80h]
    dec     [byte bp+di+80h]
    dec     al
    dec     cl

    ; 3. DEC r/m16

    dec     [word 1234h]
    dec     [word bx]
    dec     [word bp+si+7fh]
    dec     [word bp+si+7f00h]

    ;******** INC

    ; 1. INC r16

    inc     ax
    inc     cx
    inc     dx
    inc     bx
    inc     sp
    inc     bp
    inc     si
    inc     di

    ; 2. INC r/m8

    inc     [byte bp+di]
    inc     [byte bp+di-80h]
    inc     [byte bp+di+80h]
    inc     al
    inc     cl

    ; 3. INC r/m16

    inc     [word 1234h]
    inc     [word bx]
    inc     [word bp+si+7fh]
    inc     [word bp+si+7f00h]

    ;******** RET

    ret
    retn
    ret     1234
    retn    1234

    ;******** POP

    ; 1. POP r16

    pop     ax
    pop     cx
    pop     dx
    pop     bx
    pop     sp
    pop     bp
    pop     si
    pop     di

    ; 2. POP sreg

    ; 3. POP m16

    pop     [word 1234h]
    pop     [word bx]
    pop     [word bp+si]

    pop     [word bp]
    pop     [word si+7fh]

    pop     [word bx+80h]
    pop     [word bp+di-1000h]

    ;******** PUSH

    ; 1. PUSH r16

    push    ax
    push    cx
    push    dx
    push    bx
    push    sp
    push    bp
    push    si
    push    di

    ; 2. PUSH sreg

    ; 3. PUSH m16

    push    [word 1234h]
    push    [word bx]
    push    [word bp+si]

    push    [word bp]
    push    [word si+7fh]

    push    [word bx+80h]
    push    [word bp+di-1000h]

    ;******** DIV

    ; 1. DIV r/m8

    div     [byte ptr bx]
    div     [byte ptr 1234h]
    div     [byte bp]
    div     [byte bp+di-1000h]
    div     al
    div     ch

    ; 2. DIV r/m16

    div     [word ptr bx]
    div     [word ptr 1234h]
    div     [word bp]
    div     [word bp+di-1000h]
    div     ax
    div     sp

    ;******** IDIV

    ; 1. IDIV r/m8

    idiv    [byte ptr bx]
    idiv    [byte ptr 1234h]
    idiv    [byte bp]
    idiv    [byte bp+di-1000h]
    idiv    al
    idiv    ch

    ; 2. IDIV r/m16

    idiv    [word ptr bx]
    idiv    [word ptr 1234h]
    idiv    [word bp]
    idiv    [word bp+di-1000h]
    idiv    ax
    idiv    sp

    ;******** IMUL

    ; 1. IMUL r/m8

    imul    [byte ptr bx]
    imul    [byte ptr 1234h]
    imul    [byte bp]
    imul    [byte bp+di-1000h]
    imul    al
    imul    ch

    ; 2. IMUL r/m16

    imul    [word ptr bx]
    imul    [word ptr 1234h]
    imul    [word bp]
    imul    [word bp+di-1000h]
    imul    ax
    imul    sp

    ;******** MUL

    ; 1. MUL r/m8

    mul     [byte ptr bx]
    mul     [byte ptr 1234h]
    mul     [byte bp]
    mul     [byte bp+di-1000h]
    mul     al
    mul     ch

    ; 2. MUL r/m16

    mul     [word ptr bx]
    mul     [word ptr 1234h]
    mul     [word bp]
    mul     [word bp+di-1000h]
    mul     ax
    mul     sp

    ;******** IN

    in      al, 0ffh
    in      ax, 0ffh
    in      al, dx
    in      ax, dx

    ;******** OUT

    out     0ffh, al
    out     0ffh, ax
    out     dx, al
    out     dx, ax

    ;******** INT

    int     0
    int     3
    int     4
    int     0ffh
    into

    ;******** Jcc

jumps1:
    JA      jumps1
    JAE     jumps1
    JB      jumps1
    JBE     jumps1
    JC      jumps1
    JCXZ    jumps1
    JE      jumps1
    JZ      jumps1
    JG      jumps1
    JGE     jumps1
    JL      jumps1
    JLE     jumps1
    JNA     jumps1
    JNAE    jumps1
    JNB     jumps1
    JNBE    jumps1
    JNC     jumps1
    JNE     jumps1
    JNG     jumps1
    JNGE    jumps1
    JNL     jumps1
    JNLE    jumps1
    JNO     jumps1
    JNP     jumps1
    JNS     jumps1
    JNZ     jumps1
    JO      jumps1
    JP      jumps1
    JPE     jumps1
    JPO     jumps1
    JS      jumps1
    JZ      jumps1

    ;******** JMP

    ; 1. JMP rel8

    jmp     short jumps1

    ; 2. JMP rel16

    jmp     start

    ; 3. JMP r/m16

    ; 3a0. JMP r/m16 mod 0

    jmp     [word ptr 7788h]
    jmp     [word ptr bx]

    ; 2a1. JMP r/m16 disp8

    jmp     [word ptr bp+di+7fh]

    ; 2a2. JMP r/m16 disp16

    jmp     [word ptr bx+si+80h]

    ; 2a3. JMP r/m16 mod 3

    jmp     ax
    jmp     bx
    jmp     sp

    ;******** LEA r16, m

    ; 1. LEA r16, [direct]

    lea     ax, [1234h]
    lea     cx, [0]
    lea     dx, [7fffh]
    lea     bx, [8000h]
    lea     sp, [0ffffh]
    lea     bp, [1]
    lea     si, [-1]
    lea     di, [-8000h]

    ; 2. LEA AX, m

    lea     ax, [bx+si]
    lea     ax, [bx+di]
    lea     ax, [bp+di+7fh]
    lea     ax, [bx+si-8000h]

    ; 3. LEA other r16, m

    lea     bx, [bx+si]
    lea     sp, [bp+di+7fh]
    lea     bp, [bx+si-8000h]

    ;******** LDS, LES

    ; 1. LDS r16, m16:16

    ; 2. LES r16, m16:16

    ;******** LOOP

loop1:
    loop    loop1
    loope   loop1
    loopz   loop1
    loopne  loop1
    loopnz  loop1

    ;******** MOV

    ; 1. MOV reg8, imm8

    mov     al, 0ffh
    mov     cl, 080h
    mov     dl, 07fh
    mov     bl, 0
    mov     ah, -0
    mov     ch, -80h
    mov     dh, -7fh
    mov     bh, 1

    ; 2. MOV reg16, imm16

    mov     ax, 0
    mov     cx, 1
    mov     dx, 100h
    mov     bx, 1234h
    mov     sp, 7fffh
    mov     bp, 8000h
    mov     si, 0ffffh
    mov     di, -8000h

    ; 3. MOV r/m8, r8

    ; 3a. MOV r/m8, AL

    ; 3a0. MOV r/m8 mod 0, AL

    mov     [bx+si], al
    mov     [bx+di], al
    mov     [bp+si], al
    mov     [bp+di], al
    mov     [si], al
    mov     [di], al
    mov     [7788h], al
    mov     [bx], al

    ; 3a1. MOV r/m8 disp8, AL

    mov     [bx+si+7fh], al
    mov     [bx+di-80h], al
    mov     [bp+si-80h], al
    mov     [bp+di+7fh], al
    mov     [si+7fh], al
    mov     [di-80h], al
    mov     [bp-80h], al
    mov     [bx+7fh], al

    ; 3a2. MOV r/m8 disp16, AL

    mov     [bx+si+80h], al
    mov     [bx+di-0ffh], al
    mov     [bp+si+7fffh], al
    mov     [bp+di-8000h], al
    mov     [si+80h], al
    mov     [di-0ffh], al
    mov     [bp-100h], al
    mov     [bx-8000h], al

    ; 3a3. MOV r/m8 mod 3, AL

    mov     al, al
    mov     cl, al
    mov     dl, al
    mov     bl, al
    mov     ah, al
    mov     ch, al
    mov     dh, al
    mov     bh, al

    ; 3b. MOV r/m8, other r8

    ; 3b0. MOV r/m8 mod 0, other r8

    mov     [bx+si], cl
    mov     [bx+di], dl
    mov     [bp+si], bl
    mov     [bp+di], ah
    mov     [si], ch
    mov     [di], dh
    mov     [7788h], bh
    mov     [bx], cl

    ; 3b1. MOV r/m8 disp8, other r8

    mov     [bx+si+7fh], dl
    mov     [bx+di+7fh], bl
    mov     [bp+si+7fh], ah
    mov     [bp+di+7fh], ch
    mov     [si+7fh], dh
    mov     [di+7fh], bh
    mov     [bp+7fh], cl
    mov     [bx+7fh], dl

    ; 3b2. MOV r/m8 disp16, other r8

    mov     [bx+si-81h], ch
    mov     [bx+di-0ffh], dh
    mov     [bp+si-100h], bh
    mov     [bp+di-8000h], cl
    mov     [si-81h], dl
    mov     [di-0ffh], bl
    mov     [bp-100h], ah
    mov     [bx-8000h], ch

    ; 3b3. MOV r/m8 mod 3, other r8

    mov     al, dh
    mov     cl, bh
    mov     dl, dl
    mov     bl, cl
    mov     ah, bl
    mov     ch, ch
    mov     dh, dh
    mov     bh, ah

    ; 4. MOV r/m16, r16

    ; 4a. MOV r/m16, AX

    ; 4a0. MOV r/m16 mod 0, AX

    mov     [bx+si], ax
    mov     [bx+di], ax
    mov     [bp+si], ax
    mov     [bp+di], ax
    mov     [si], ax
    mov     [di], ax
    mov     [7788h], ax
    mov     [bx], ax

    ; 4a1. MOV r/m16 disp8, AX

    mov     [bx+si-80h], ax
    mov     [bx+di-80h], ax
    mov     [bp+si-80h], ax
    mov     [bp+di-80h], ax
    mov     [si-80h], ax
    mov     [di-80h], ax
    mov     [bp-80h], ax
    mov     [bx-80h], ax

    ; 4a2. MOV r/m16 disp16, AX

    mov     [bx+si+80h], ax
    mov     [bx+di+81h], ax
    mov     [bp+si+7fffh], ax
    mov     [bp+di+7ffeh], ax
    mov     [si+80h], ax
    mov     [di+81h], ax
    mov     [bp+7fffh], ax
    mov     [bx+7ffeh], ax

    ; 4a3. MOV r/m16 mod 3, AX

    mov     ax, ax
    mov     cx, ax
    mov     dx, ax
    mov     bx, ax
    mov     sp, ax
    mov     bp, ax
    mov     si, ax
    mov     di, ax

    ; 4b. MOV r/m16, other r16

    ; 4b0. MOV r/m16 mod 0, other r16

    mov     [bx+si], cx
    mov     [bx+di], dx
    mov     [bp+si], bx
    mov     [bp+di], sp
    mov     [si], bp
    mov     [di], si
    mov     [7788h], di
    mov     [bx], cx

    ; 4b1. MOV r/m16 disp8, other r16

    mov     [bx+si-80h], bx
    mov     [bx+di-80h], sp
    mov     [bp+si-80h], bp
    mov     [bp+di-80h], si
    mov     [si-80h], di
    mov     [di-80h], cx
    mov     [bp-80h], dx
    mov     [bx-80h], bx

    ; 4b2. MOV r/m16 disp16, other r16

    mov     [bx+si+80h], sp
    mov     [bx+di+81h], bp
    mov     [bp+si+7fffh], si
    mov     [bp+di+7ffeh], di
    mov     [si+80h], cx
    mov     [di+81h], dx
    mov     [bp+7fffh], bx
    mov     [bx+7ffeh], sp

    ; 4b3. MOV r/m16 mod 3, other r16

    mov     ax, cx
    mov     cx, bx
    mov     dx, dx
    mov     bx, sp
    mov     sp, bp
    mov     bp, si
    mov     si, di
    mov     di, di

    ; 5. MOV r8, r/m8

    ; 5a. MOV AL, r/m8

    ; 5a0. MOV AL, r/m8 mod 0

    mov     al, [bx+si]
    mov     al, [bx+di]
    mov     al, [bp+si]
    mov     al, [bp+di]
    mov     al, [si]
    mov     al, [di]
    mov     al, [7788h]
    mov     al, [bx]

    ; 5a1. MOV AL, r/m8 disp8

    mov     al, [bx+si+7fh]
    mov     al, [bx+di+7fh]
    mov     al, [bp+si+7fh]
    mov     al, [bp+di+7fh]
    mov     al, [si+7fh]
    mov     al, [di+7fh]
    mov     al, [bp+7fh]
    mov     al, [bx+7fh]

    ; 5a2. MOV AL, r/m8 disp16

    mov     al, [bx+si+80h]
    mov     al, [bx+di+81h]
    mov     al, [bp+si+7fffh]
    mov     al, [bp+di+7ffeh]
    mov     al, [si+80h]
    mov     al, [di+81h]
    mov     al, [bp+7fffh]
    mov     al, [bx+7ffeh]

    ; 5a3. MOV AL, r/m8 mod 3

    mov     al, al
    mov     al, cl
    mov     al, dl
    mov     al, bl
    mov     al, ah
    mov     al, ch
    mov     al, dh
    mov     al, bh

    ; 5b. MOV other r8, r/m8

    ; 5b0. MOV other r8, r/m8 mod 0

    mov     cl, [bx+si]
    mov     dl, [bx+di]
    mov     bl, [bp+si]
    mov     ah, [bp+di]
    mov     ch, [si]
    mov     dh, [di]
    mov     bh, [7788h]
    mov     cl, [bx]

    ; 5b1. MOV other r8, r/m8 disp8

    mov     bl, [bx+si-80h]
    mov     ah, [bx+di-80h]
    mov     ch, [bp+si-80h]
    mov     dh, [bp+di-80h]
    mov     bh, [si-80h]
    mov     cl, [di-80h]
    mov     dl, [bp-80h]
    mov     bl, [bx-80h]

    ; 5b2. MOV other r8, r/m8 disp16

    mov     ch, [bx+si-81h]
    mov     dh, [bx+di-0ffh]
    mov     bh, [bp+si-100h]
    mov     cl, [bp+di-8000h]
    mov     dl, [si-81h]
    mov     bl, [di-0ffh]
    mov     ah, [bp-100h]
    mov     ch, [bx-8000h]

    ; 5b3. MOV other r8, r/m8 mod 3

    mov     dh, al
    mov     bh, cl
    mov     dl, dl
    mov     cl, bl
    mov     bl, ah
    mov     ch, dh
    mov     dh, ah
    mov     ah, ah

    ; 6. MOV r16, r/m16

    ; 6a. MOV AX, r/m16

    ; 6a0. MOV AX, r/m16 mod 0

    mov     ax, [bx+si]
    mov     ax, [bx+di]
    mov     ax, [bp+si]
    mov     ax, [bp+di]
    mov     ax, [si]
    mov     ax, [di]
    mov     ax, [7788h]
    mov     ax, [bx]

    ; 6a1. MOV AX, r/m16 disp8

    mov     ax, [bx+si+7fh]
    mov     ax, [bx+di+7fh]
    mov     ax, [bp+si+7fh]
    mov     ax, [bp+di+7fh]
    mov     ax, [si+7fh]
    mov     ax, [di+7fh]
    mov     ax, [bp+7fh]
    mov     ax, [bx+7fh]

    ; 6a2. MOV AX, r/m16 disp16

    mov     ax, [bx+si+80h]
    mov     ax, [bx+di+81h]
    mov     ax, [bp+si+7fffh]
    mov     ax, [bp+di+7ffeh]
    mov     ax, [si+80h]
    mov     ax, [di+81h]
    mov     ax, [bp+7fffh]
    mov     ax, [bx+7ffeh]

    ; 6a3. MOV AX, r/m16 mod 3

    mov     ax, ax
    mov     ax, cx
    mov     ax, dx
    mov     ax, bx
    mov     ax, sp
    mov     ax, bp
    mov     ax, si
    mov     ax, di

    ; 6b. MOV other r16, r/m16

    ; 6b0. MOV other r16, r/m16 mod 0

    mov     cx, [bx+si]
    mov     dx, [bx+di]
    mov     bx, [bp+si]
    mov     sp, [bp+di]
    mov     bp, [si]
    mov     si, [di]
    mov     di, [7788h]
    mov     cx, [bx]

    ; 6b1. MOV other r16, r/m16 disp8

    mov     dx, [bx+si+7fh]
    mov     bx, [bx+di+7fh]
    mov     sp, [bp+si+7fh]
    mov     bp, [bp+di+7fh]
    mov     si, [si+7fh]
    mov     di, [di+7fh]
    mov     cx, [bp+7fh]
    mov     dx, [bx+7fh]

    ; 6b2. MOV other r16, r/m16 disp16

    mov     sp, [bx+si+80h]
    mov     bp, [bx+di+81h]
    mov     si, [bp+si+7fffh]
    mov     di, [bp+di+7ffeh]
    mov     cx, [si+80h]
    mov     dx, [di+81h]
    mov     bx, [bp+7fffh]
    mov     sp, [bx+7ffeh]

    ; 6b3. MOV other r16, r/m16 mod 3

    mov     cx, ax
    mov     dx, cx
    mov     bx, dx
    mov     sp, bx
    mov     bp, sp
    mov     di, bp
    mov     si, si
    mov     si, di

    ; 7. MOV r/m16, Sreg

    ; 7a. MOV r/m16, DS

    ; 7a0. MOV r/m16 mod 0, DS

    mov     [bx+si], ds
    mov     [bx+di], ds
    mov     [bp+si], ds
    mov     [bp+di], ds
    mov     [si], ds
    mov     [di], ds
    mov     [7788h], ds
    mov     [bx], ds

    ; 7a1. MOV r/m16 disp8, DS

    mov     [bx+si-80h], ds
    mov     [bx+di-80h], ds
    mov     [bp+si-80h], ds
    mov     [bp+di-80h], ds
    mov     [si-80h], ds
    mov     [di-80h], ds
    mov     [bp-80h], ds
    mov     [bx-80h], ds

    ; 7a2. MOV r/m16 disp16, DS

    mov     [bx+si+80h], ds
    mov     [bx+di+81h], ds
    mov     [bp+si+7fffh], ds
    mov     [bp+di+7ffeh], ds
    mov     [si+80h], ds
    mov     [di+81h], ds
    mov     [bp+7fffh], ds
    mov     [bx+7ffeh], ds

    ; 7a3. MOV r/m16 mod 3, DS

    mov     ax, ds
    mov     cx, ds
    mov     dx, ds
    mov     bx, ds
    mov     sp, ds
    mov     bp, ds
    mov     si, ds
    mov     di, ds

    ; 7b. MOV r/m16, other sreg

    ; 7b0. MOV r/m16 mod 0, other sreg

    mov     [bx+si], cs
    mov     [7788h], ss
    mov     [bx], es

    ; 7b1. MOV r/m16 disp8, other sreg

    mov     [bx+di-80h], cs
    mov     [bp-80h], ss

    ; 7b2. MOV r/m16 disp16, other sreg

    mov     [bp+si+7fffh], es
    mov     [bx+7ffeh], cs

    ; 7b3. MOV r/m16 mod 3, other sreg

    mov     ax, ss
    mov     cx, cs
    mov     bx, es
    mov     bp, cs

    ; 8. MOV sreg, r/m16 -- CS is an invalid destination

    mov     ds, [bx+si]
    mov     ss, [7788h]
    mov     es, [bx]

    mov     ds, [bx+di-80h]
    mov     ss, [bp-80h]

    mov     es, [bp+si+7fffh]
    mov     ds, [bx+7ffeh]

    mov     ss, ax
    mov     es, cx
    mov     ds, bx

    ; 9. MOV AL, moffs8

    mov     al, [1234h]

    ; 10. MOV AX, moffs16

    mov     ax, [0deadh]

    ; 11. MOV moffs8, AL

    mov     [1234h], al

    ; 12. MOV moffs16, AX

    mov     [0deadh], ax

    ; 13. MOV r/m8, imm8

    ; 13a0. MOV r/m8 mod 0, imm8

    mov     [byte ptr bx+si], 0
    mov     [byte ptr bx+di], 1
    mov     [byte ptr bp+si], 7fh
    mov     [byte ptr bp+di], 80h
    mov     [byte ptr si], 0ffh
    mov     [byte ptr di], -1
    mov     [byte ptr 7788h], -80h
    mov     [byte ptr bx], 0

    ; 13a1. MOV r/m8 disp8, imm8

    mov     [byte bx+si+7fh], 0
    mov     [byte bx+di-80h], 1
    mov     [byte bp+si-80h], 7fh
    mov     [byte bp+di+7fh], 80h
    mov     [byte si+7fh], 0ffh
    mov     [byte di-80h], -1
    mov     [byte bp-80h], -80h
    mov     [byte bx+7fh], 0

    ; 13a2. MOV r/m8 disp16, imm8

    mov     [byte bx+si+80h], 1
    mov     [byte bx+di-0ffh], -80h
    mov     [byte bp+si+7fffh], -1
    mov     [byte bp+di-8000h], 0ffh
    mov     [byte si+80h], 80h
    mov     [byte di-0ffh], 7fh
    mov     [byte bp-100h], 1
    mov     [byte bx-8000h], 0

    ; 13a3. MOV r/m8 mod 3, imm8 -- uses different encoding

    mov     ch, 12h

    ; 14. MOV r/m16, imm16

    mov     [word ptr bx+si], 0
    mov     [word ptr bp+di], 8000h
    mov     [word ptr 7788h], -80h

    mov     [word di-80h], -1
    mov     [word bx+7fh], 0

    mov     [word bx+si+80h], 1
    mov     [word bp-100h], 1234h

    mov     sp, 900h

    ;******** NEG

    ; 1. NEG r/m8

    neg     [byte bx+si]
    neg     [byte 1000h]
    neg     [byte bp+di-7fh]
    neg     [byte si-80h]
    neg     cl

    ; 2. NEG r/m16

    neg     [word bx+si]
    neg     [word 1000h]
    neg     [word bp+di-7fh]
    neg     [word si-80h]
    neg     cx

    ;******** NOT

    ; 1. NOT r/m8

    not     [byte bx+si]
    not     [byte 1000h]
    not     [byte bp+di-7fh]
    not     [byte si-80h]
    not     cl

    ; 2. NOT r/m16

    not     [word bx+si]
    not     [word 1000h]
    not     [word bp+di-7fh]
    not     [word si-80h]
    not     cx

    ;******** AND

    ; 1. AND r/m8, r8

    and     [bx+si+7fh], ch

    ; 2. AND r/m16, r16

    and     [bx+si+7fh], cx

    ; 3. AND r8, r/m8

    and     bh, [di-80h]
    and     bl, bl

    ; 4. AND r16, r/m16

    and     bx, [di-80h]
    and     bx, cx

    ; 5. AND AL, imm8

    and     al, 3

    ; 6. AND AX, imm16

    and     ax, 3

    ; 7. AND r/m8, imm8

    and     [byte ptr bp], 78h
    and     dl, 78h

    ; 8. AND r/m16, imm16

    and     [word ptr bp], 7812h
    and     dx, 7812h

    ; 9. AND r/m16, imm8

    and     [word ptr bp], 78h
    and     dx, 78h

    ;******** OR

    ; 1. OR r/m8, r8

    or      [bx+si+7fh], ch

    ; 2. OR r/m16, r16

    or      [bx+si+7fh], cx

    ; 3. OR r8, r/m8

    or      bh, [di-80h]
    or      bl, bl

    ; 4. OR r16, r/m16

    or      bx, [di-80h]
    or      bx, cx

    ; 5. OR AL, imm8

    or      al, 3

    ; 6. OR AX, imm16

    or      ax, 3

    ; 7. OR r/m8, imm8

    or      [byte ptr bp], 78h
    or      dl, 78h

    ; 8. OR r/m16, imm16

    or      [word ptr bp], 7812h
    or      dx, 7812h

    ; 9. OR r/m16, imm8

    or      [word ptr bp], 78h
    or      dx, 78h

    ;******** XOR

    ; 1. XOR r/m8, r8

    xor     [bx+si+7fh], ch

    ; 2. XOR r/m16, r16

    xor     [bx+si+7fh], cx

    ; 3. XOR r8, r/m8

    xor     bh, [di-80h]
    xor     bl, bl

    ; 4. XOR r16, r/m16

    xor     bx, [di-80h]
    xor     bx, cx

    ; 5. XOR AL, imm8

    xor     al, 3

    ; 6. XOR AX, imm16

    xor     ax, 3

    ; 7. XOR r/m8, imm8

    xor     [byte ptr bp], 78h
    xor     dl, 78h

    ; 8. XOR r/m16, imm16

    xor     [word ptr bp], 7812h
    xor     dx, 7812h

    ; 9. XOR r/m16, imm8

    xor     [word ptr bp], 78h
    xor     dx, 78h

    ;******** RCL

    ; 1. RCL r/m8, 1

    rcl     [byte bx+si], 1
    rcl     [byte 1234h], 1
    rcl     [byte bp], 1
    rcl     [byte bp-100h], 1
    rcl     al, 1

    ; 2. RCL r/m8, CL

    rcl     [byte bx+si], cl
    rcl     [byte 1234h], cl
    rcl     [byte bp], cl
    rcl     [byte bp-100h], cl
    rcl     al, cl

    ; 3. RCL r/m16, 1

    rcl     [word bx+si], 1
    rcl     [word 1234h], 1
    rcl     [word bp], 1
    rcl     [word bp-100h], 1
    rcl     ax, 1

    ; 4. RCL r/m16, CL

    rcl     [word bx+si], cl
    rcl     [word 1234h], cl
    rcl     [word bp], cl
    rcl     [word bp-100h], cl
    rcl     ax, cl

    ;******** RCR

    ; 1. RCR r/m8, 1

    rcr     [byte bx+si], 1
    rcr     [byte 1234h], 1
    rcr     [byte bp], 1
    rcr     [byte bp-100h], 1
    rcr     al, 1

    ; 2. RCR r/m8, CL

    rcr     [byte bx+si], cl
    rcr     [byte 1234h], cl
    rcr     [byte bp], cl
    rcr     [byte bp-100h], cl
    rcr     al, cl

    ; 3. RCR r/m16, 1

    rcr     [word bx+si], 1
    rcr     [word 1234h], 1
    rcr     [word bp], 1
    rcr     [word bp-100h], 1
    rcr     ax, 1

    ; 4. RCR r/m16, CL

    rcr     [word bx+si], cl
    rcr     [word 1234h], cl
    rcr     [word bp], cl
    rcr     [word bp-100h], cl
    rcr     ax, cl

    ;******** ROL

    ; 1. ROL r/m8, 1

    rol     [byte bx+si], 1
    rol     [byte 1234h], 1
    rol     [byte bp], 1
    rol     [byte bp-100h], 1
    rol     al, 1

    ; 2. ROL r/m8, CL

    rol     [byte bx+si], cl
    rol     [byte 1234h], cl
    rol     [byte bp], cl
    rol     [byte bp-100h], cl
    rol     al, cl

    ; 3. ROL r/m16, 1

    rol     [word bx+si], 1
    rol     [word 1234h], 1
    rol     [word bp], 1
    rol     [word bp-100h], 1
    rol     ax, 1

    ; 4. ROL r/m16, CL

    rol     [word bx+si], cl
    rol     [word 1234h], cl
    rol     [word bp], cl
    rol     [word bp-100h], cl
    rol     ax, cl

    ;******** ROR

    ; 1. ROR r/m8, 1

    ror     [byte bx+si], 1
    ror     [byte 1234h], 1
    ror     [byte bp], 1
    ror     [byte bp-100h], 1
    ror     al, 1

    ; 2. ROR r/m8, CL

    ror     [byte bx+si], cl
    ror     [byte 1234h], cl
    ror     [byte bp], cl
    ror     [byte bp-100h], cl
    ror     al, cl
    ror     cl, cl

    ; 3. ROR r/m16, 1

    ror     [word bx+si], 1
    ror     [word 1234h], 1
    ror     [word bp], 1
    ror     [word bp-100h], 1
    ror     ax, 1

    ; 4. ROR r/m16, CL

    ror     [word bx+si], cl
    ror     [word 1234h], cl
    ror     [word bp], cl
    ror     [word bp-100h], cl
    ror     ax, cl

    ;******** SAL

    ; 1. SAL r/m8, 1

    sal     [byte bx+si], 1
    sal     [byte 1234h], 1
    sal     [byte bp], 1
    sal     [byte bp-100h], 1
    sal     al, 1

    ; 2. SAL r/m8, CL

    sal     [byte bx+si], cl
    sal     [byte 1234h], cl
    sal     [byte bp], cl
    sal     [byte bp-100h], cl
    sal     al, cl
    sal     cl, cl

    ; 3. SAL r/m16, 1

    sal     [word bx+si], 1
    sal     [word 1234h], 1
    sal     [word bp], 1
    sal     [word bp-100h], 1
    sal     ax, 1

    ; 4. SAL r/m16, CL

    sal     [word bx+si], cl
    sal     [word 1234h], cl
    sal     [word bp], cl
    sal     [word bp-100h], cl
    sal     ax, cl

    ;******** SAR

    ; 1. SAR r/m8, 1

    sar     [byte bx+si], 1
    sar     [byte 1234h], 1
    sar     [byte bp], 1
    sar     [byte bp-100h], 1
    sar     al, 1

    ; 2. SAR r/m8, CL

    sar     [byte bx+si], cl
    sar     [byte 1234h], cl
    sar     [byte bp], cl
    sar     [byte bp-100h], cl
    sar     al, cl
    sar     cl, cl

    ; 3. SAR r/m16, 1

    sar     [word bx+si], 1
    sar     [word 1234h], 1
    sar     [word bp], 1
    sar     [word bp-100h], 1
    sar     ax, 1

    ; 4. SAR r/m16, CL

    sar     [word bx+si], cl
    sar     [word 1234h], cl
    sar     [word bp], cl
    sar     [word bp-100h], cl
    sar     ax, cl

    ;******** SHL

    ; 1. SHL r/m8, 1

    shl     [byte bx+si], 1
    shl     [byte 1234h], 1
    shl     [byte bp], 1
    shl     [byte bp-100h], 1
    shl     al, 1

    ; 2. SHL r/m8, CL

    shl     [byte bx+si], cl
    shl     [byte 1234h], cl
    shl     [byte bp], cl
    shl     [byte bp-100h], cl
    shl     al, cl
    shl     cl, cl

    ; 3. SHL r/m16, 1

    shl     [word bx+si], 1
    shl     [word 1234h], 1
    shl     [word bp], 1
    shl     [word bp-100h], 1
    shl     ax, 1

    ; 4. SHL r/m16, CL

    shl     [word bx+si], cl
    shl     [word 1234h], cl
    shl     [word bp], cl
    shl     [word bp-100h], cl
    shl     ax, cl

    ;******** SHR

    ; 1. SHR r/m8, 1

    shr     [byte bx+si], 1
    shr     [byte 1234h], 1
    shr     [byte bp], 1
    shr     [byte bp-100h], 1
    shr     al, 1

    ; 2. SHR r/m8, CL

    shr     [byte bx+si], cl
    shr     [byte 1234h], cl
    shr     [byte bp], cl
    shr     [byte bp-100h], cl
    shr     al, cl
    shr     cl, cl

    ; 3. SHR r/m16, 1

    shr     [word bx+si], 1
    shr     [word 1234h], 1
    shr     [word bp], 1
    shr     [word bp-100h], 1
    shr     ax, 1

    ; 4. SHR r/m16, CL

    shr     [word bx+si], cl
    shr     [word 1234h], cl
    shr     [word bp], cl
    shr     [word bp-100h], cl
    shr     ax, cl

    ;******** SBB

    ; 1. SBB AL, imm8

    sbb     al, 81h

    ; 2. SBB AX, imm16

    sbb     ax, 81h

    ; 3. SBB r/m8, imm8

    sbb     [byte bx+si], 22h
    sbb     [byte 1234h], 0ffh
    sbb     [byte bp], -18h
    sbb     [byte bp+100h], 0
    sbb     ah, 81h

    ; 4. SBB r/m16, imm16

    sbb     [word bx+si], 100h
    sbb     [word 1234h], 8000h
    sbb     [word bp], 0fe00h
    sbb     [word bp+100h], -8000h
    sbb     bp, 80h

    ; 5. SBB r/m16, imm8

    sbb     [word bx+si], 0
    sbb     [word 1234h], 7fh
    sbb     [word bp], -1
    sbb     [word bp+100h], -80h
    sbb     bp, 7fh

    ; 6. SBB r/m8, r8

    sbb     [bx+di], al
    sbb     [1234h], al
    sbb     [di-10h], al
    sbb     [si+100h], al
    sbb     ah, al

    sbb     [bx+di], ah
    sbb     [1234h], bl
    sbb     [bp+si-10h], ch
    sbb     [di+100h], dh
    sbb     dl, dl

    ; 7. SBB r/m16, r16

    sbb     [bx+di], ax
    sbb     [1234h], ax
    sbb     [di-10h], ax
    sbb     [si+100h], ax
    sbb     bx, ax

    sbb     [bx+di], cx
    sbb     [1234h], dx
    sbb     [bp+si-10h], bx
    sbb     [di+100h], bp
    sbb     sp, sp

    ; 8. SBB r8, r/m8

    sbb     al, [bx+di]
    sbb     al, [1234h]
    sbb     al, [di-10h]
    sbb     al, [si+100h]
    sbb     al, bl

    sbb     cl, [bx+di]
    sbb     dl, [1234h]
    sbb     bl, [bp+si-10h]
    sbb     ah, [di+100h]
    sbb     ch, dh

    ; 9. SBB r16, r/m16

    sbb     ax, [bx+di]
    sbb     ax, [1234h]
    sbb     ax, [di-10h]
    sbb     ax, [si+100h]
    sbb     ax, bx

    sbb     cx, [bx+di]
    sbb     dx, [1234h]
    sbb     bx, [bp+si-10h]
    sbb     sp, [di+100h]
    sbb     bp, bp

    ;******** SUB

    ; 1. SUB AL, imm8

    sub     al, 81h

    ; 2. SUB AX, imm16

    sub     ax, 81h

    ; 3. SUB r/m8, imm8

    sub     [byte bx+si], 22h
    sub     [byte 1234h], 0ffh
    sub     [byte bp], -18h
    sub     [byte bp+100h], 0
    sub     ah, 81h

    ; 4. SUB r/m16, imm16

    sub     [word bx+si], 100h
    sub     [word 1234h], 8000h
    sub     [word bp], 0fe00h
    sub     [word bp+100h], -8000h
    sub     bp, 80h

    ; 5. SUB r/m16, imm8

    sub     [word bx+si], 0
    sub     [word 1234h], 7fh
    sub     [word bp], -1
    sub     [word bp+100h], -80h
    sub     bp, 7fh

    ; 6. SUB r/m8, r8

    sub     [bx+di], al
    sub     [1234h], al
    sub     [di-10h], al
    sub     [si+100h], al
    sub     ah, al

    sub     [bx+di], ah
    sub     [1234h], bl
    sub     [bp+si-10h], ch
    sub     [di+100h], dh
    sub     dl, dl

    ; 7. SUB r/m16, r16

    sub     [bx+di], ax
    sub     [1234h], ax
    sub     [di-10h], ax
    sub     [si+100h], ax
    sub     bx, ax

    sub     [bx+di], cx
    sub     [1234h], dx
    sub     [bp+si-10h], bx
    sub     [di+100h], bp
    sub     sp, sp

    ; 8. SUB r8, r/m8

    sub     al, [bx+di]
    sub     al, [1234h]
    sub     al, [di-10h]
    sub     al, [si+100h]
    sub     al, bl

    sub     cl, [bx+di]
    sub     dl, [1234h]
    sub     bl, [bp+si-10h]
    sub     ah, [di+100h]
    sub     ch, dh

    ; 9. SUB r16, r/m16

    sub     ax, [bx+di]
    sub     ax, [1234h]
    sub     ax, [di-10h]
    sub     ax, [si+100h]
    sub     ax, bx

    sub     cx, [bx+di]
    sub     dx, [1234h]
    sub     bx, [bp+si-10h]
    sub     sp, [di+100h]
    sub     bp, bp

    ;******** TEST

    ; 1. TEST AL, imm8

    test    al, 81h

    ; 2. TEST AX, imm16

    test    ax, 81h

    ; 3. TEST r/m8, imm8

    test    [byte bx+si], 0
    test    [byte bx+si], 7fh
    test    [byte 1234h], 0ffh
    test    [byte bp], -18h
    test    [byte bp+100h], 0
    test    ah, 81h

    ; 4. TEST r/m16, imm16

    test    [word bx+si], 100h
    test    [word 1234h], 8000h
    test    [word bp], 0fe00h
    test    [word bp+100h], -8000h
    test    bp, 80h

    ; 5. TEST r/m8, r8

    test    [bx+di], al
    test    [1234h], al
    test    [di-10h], al
    test    [si+100h], al
    test    ah, al

    test    [bx+di], ah
    test    [1234h], bl
    test    [bp+si-10h], ch
    test    [di+100h], dh
    test    dl, dl

    ; 6. TEST r/m16, r16

    test    [bx+di], ax
    test    [1234h], ax
    test    [di-10h], ax
    test    [si+100h], ax
    test    bx, ax

    test    [bx+di], cx
    test    [1234h], dx
    test    [bp+si-10h], bx
    test    [di+100h], bp
    test    sp, sp

    ; 7. TEST r8, r/m8

    test    al, [bx+di]
    test    al, [1234h]
    test    al, [di-10h]
    test    al, [si+100h]
    test    al, bl

    test    cl, [bx+di]
    test    dl, [1234h]
    test    bl, [bp+si-10h]
    test    ah, [di+100h]
    test    ch, dh

    ; 8. TEST r16, r/m16

    test    ax, [bx+di]
    test    ax, [1234h]
    test    ax, [di-10h]
    test    ax, [si+100h]
    test    ax, bx

    test    cx, [bx+di]
    test    dx, [1234h]
    test    bx, [bp+si-10h]
    test    sp, [di+100h]
    test    bp, bp

    ;******** PREFIXES

    lock
    nop

    rep movsb
    rep movsw
    rep stosb
    rep stosw
    repe cmpsb
    repe cmpsw
    repe scasb
    repe scasw
    repne cmpsb
    repne cmpsw
    repne scasb
    repne scasw

    ;******** LOW

;   add     al, LOW 1234h
;   add     al, LOW (-1234h)
;   add     al, LOW 2080h

;   add     ax, LOW 1234h
;   add     ax, LOW (-1234h)
;   add     ax, LOW 2080h

    ; extra/regression test cases

FFFF    equ     0ffffh
PAGE0   equ     060h

;   mov     ax, [bx+si+80h]
;   mov     ax, [bx+si-80h]
;   mov     ax, [bx+si+0ffffh]  ; 8-bit displacement, -1
;   mov     ax, [bx+si-0ffffh]  ; 8-bit displacement, +1
;   mov     ax, [bx+si+0ff80h]  ; 8-bit displacement, -1
;   mov     ax, [bx+si-0ff80h]  ; 8-bit displacement, +1
;   mov     ax, [bx+si+0ff7fh]  ; 8-bit displacement, -1
;   mov     ax, [bx+si-0ff7fh]  ; 8-bit displacement, +1
;   mov     ax, [bx+si+FFFF]
;   mov     ax, [bx+si-FFFF]
;   mov     ax, [si+PAGE0]

    ENDS
    END start

