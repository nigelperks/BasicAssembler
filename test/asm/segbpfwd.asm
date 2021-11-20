; BP default segment SS vs displacement label segment
; and other segment override logic

    IDEAL

    ASSUME CS:_code, DS:_data, SS:_stack, ES:_extra

    SEGMENT _code
    ORG     0100h

start:    
    mov     ax, [bp]		; no override: use register default
    mov     ax, [si]            ; no override: use register default

    mov	    al, [_c]		; CS override: use label segment
    mov	    ax, [_d]		; no override: use label segment = register default
    mov     ax, [_e]		; ES override: use label segment
    mov     ax, [_s]            ; SS override: use label segment

    mov     ax, [bp+_d]		; DS override: use label segment over register default
    mov     ax, [si+_d]		; no override: use label segment = register default

; no label, explicit segment register

    mov     ax, [ds:si]		; no override: use register default = explicit segment
    mov     ax, [ds:bp]		; DS override: use explicit over register default
    mov     ax, [es:si]		; ES override: use explicit over register default
    mov     ax, [ss:bp]		; no override: use register default = explicit segment

; label and explicit, no registers

    mov     al, [es:_c]		; ES override: use explicit over label

; label and explicit, with registers

    mov     al, [es:bp+_c]	; ES override: use explicit over label and register default
    mov     al, [ss:bp+_c]	; no override: use explicit = register default

    ENDS    _code


    SEGMENT _code


_c	db	90h

    ENDS    _code

    SEGMENT _data

_d	dw	0deadh

    ENDS    _data

    SEGMENT _stack

_s 	dw	09999h

    ENDS    _stack

    SEGMENT _extra

_e	dw	0faceh

    ENDS    _extra

    SEGMENT _tail

_t	dw	0beefh

    ENDS    _tail
    END     start
