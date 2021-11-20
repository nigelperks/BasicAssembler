    IDEAL
    SEGMENT image
    ASSUME  CS:image,DS:image,ES:image,SS:image
    ORG     100h

start:
    ret
    retn
    ret     30h
    retn    30h

    ENDS
    END     start
