; implicit or no operands

    IDEAL

    SEGMENT image

    ORG     0100h

    ASSUME CS:image, DS:image, SS:image, ES:image

start:    
    rep     movsb
    rep     movsw
    rep     stosb
    rep     stosw
    repe    cmpsb
    repe    cmpsw
    repe    scasb
    repe    scasw
    repne   cmpsb
    repne   cmpsw
    repne   scasb
    repne   scasw
    repz    cmpsb
    repz    cmpsw
    repz    scasb
    repz    scasw
    repnz   cmpsb
    repnz   cmpsw
    repnz   scasb
    repnz   scasw

; end

    ENDS    image
    END     start
