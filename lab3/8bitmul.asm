ASSUME CS:CODE DS:DATA

DATA SEGMENT
    NUM1 DB 12H
    NUM2 DB 15H
    RESULT DW 01 DUP(?)
    DATA ENDS

CODE SEGMENT
    START:MOV AX, DATA           
        MOV DS, AX
        MOV AL,NUM1
        MOV BL,NUM2
        MUL BL
        MOV DI, OFFSET RESULT
    
        MOV [DI],AL       
        MOV AH,4CH
        INT 21H
CODE ENDS
END START

          