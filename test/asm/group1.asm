    IDEAL

; data addressable via group

    SEGMENT _code

    ORG     0100h

start:
    ASSUME CS:image, DS:image, SS:_stack, ES:_extra

_code_x     dw 1

    ENDS    _code

    SEGMENT _data

_data_x     dw 2

    ENDS    _data

    SEGMENT _stack

_stack_x    dw 3

    ENDS    _stack

    SEGMENT _extra

_extra_x    dw 4

    ENDS    _extra

    SEGMENT _code

    mov     dx, [_code_x]
    mov     dx, [_data_x]
    mov     dx, [_stack_x]
    mov     dx, [_extra_x]

    ENDS    _code

    GROUP   image _code, _data, _stack, _extra

    END     start
