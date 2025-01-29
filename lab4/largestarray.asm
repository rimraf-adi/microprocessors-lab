ASSUME CODE:CS, DS:DATA    

DATA SEGMENT
    LIST DB 01H, 02H, 03H, 04H, 08H
    MAX  DB 01 DUP(0)
    DATA ENDS

CODE SEGMENT
    START:
        MOV AX, DATA
        MOV DS, AX

        MOV SI, OFFSET LIST
        MOV AL, [SI]
        
        MOV MAX, AL
        MOV CL, 04H

    LOOPY:
        INC SI
        MOV AL, [SI]
        CMP AL, MAX
        JBE SKIP
        MOV MAX, AL

    SKIP:
        DEC CL
        JNZ LOOPY

        MOV AL, MAX
        MOV [DI], AL
        MOV AH, 4CH
        INT 21H

    CODE ENDS
END START
