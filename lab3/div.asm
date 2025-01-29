ASSUME CS:CODE DS:DATA

DATA SEGMENT
    NUM1 DW 1944H
    NUM2 DB 99H
    RESULT DW 01 DUP(?)
    DATA ENDS

CODE SEGMENT
    START:MOV AX, DATA           
        MOV DS, AX
        MOV AX,NUM1
        MOV BL,NUM2
        DIV BL
        MOV DI, OFFSET RESULT
    
        MOV [DI],AL       
        MOV AH,4CH
        INT 21H
CODE ENDS
END START

          