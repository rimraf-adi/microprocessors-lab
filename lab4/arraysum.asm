ASSUME CODE:CS DS:DATA    

DATA SEGMENT
    LIST DB 01H,02H,03H,04H,05H
    RESULT DB 01 DUP(0)
    DATA ENDS

CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           MOV CL, 05H
           MOV SI ,OFFSET LIST
           L1:MOV AL,[SI]
           ADD RESULT,AL
           INC SI
           DEC CL 
           JNZ L1
           MOV AL, RESULT
           MOV [DI], AL
           MOV AH,4CH
           INT 21H
           CODE ENDS
END START