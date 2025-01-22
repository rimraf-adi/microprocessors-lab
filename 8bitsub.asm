ASSUME CS:CODE DS:DATA

DATA SEGMENT
    NUM1 DB 19H
    NUM2 DB 09H
    RESULT DB 01 DUP(?)
    DATA ENDS

CODE SEGMENT
    START:MOV AX, DATA           
        MOV DS, AX
        MOV CL,NUM1
        MOV DL,NUM2
        SUB CL,DL
        MOV DI, OFFSET RESULT
    
        MOV [DI],AL       
        MOV AH,4CH
        INT 21H
CODE ENDS
END START

          