ASSUME CS:CODE DS:DATA

DATA SEGMENT
    NUM1 DW 1203H
    NUM2 DW 1523H
    RESULT DW 01 DUP(?)
    DATA ENDS

CODE SEGMENT
    START:MOV AX, DATA           
        MOV DS, AX
        MOV CX, NUM1
        MOV DX, NUM2
        ADD CX,DX
        MOV DI, OFFSET RESULT
    
        MOV [DI],AL       
        MOV AH,4CH
        INT 21H
CODE ENDS
END START

          