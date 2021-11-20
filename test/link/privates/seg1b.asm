	IDEAL
	ASSUME CS:SEG1,DS:SEG1,ES:SEG1,SS:SEG1
	SEGMENT SEG1 PRIVATE
        mov bx, OFFSET thing
        mov al, 42
        add dl, ch
thing:
        int 21h
	ENDS
	END
