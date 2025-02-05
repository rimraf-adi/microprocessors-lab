ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    STRING1 DB "HELLO$"
    STRING2 DB 6 DUP('$')
    DATA ENDS

CODE SEGMENT
    START:
           MOV AX, DATA
           MOV DS, AX 
           MOV ES,AX
           
           MOV SI, OFFSET STRING1
           MOV DI, OFFSET STRING2
           
           MOV CX, 6
           
           REP MOVSB

           MOV AH, 4CH
           INT 21H
           
    CODE ENDS
END START
