ASSUME CS:CODE DS:DATA

DATA SEGMENT
    NUM1 DB 02H
    NUM2 DB 03H
    RESULT DB 01 DUP(?)
    DATA ENDS

CODE SEGMENT
    START:MOV AX, DATA           
        MOV DS, AX
        MOV AL, NUM1
        MOV BL, NUM2
        ADD AL,BL
        MOV DI, OFFSET RESULT
    
        MOV [DI],AL       
        MOV AH,4CH
        INT 21H
CODE ENDS
END START

          