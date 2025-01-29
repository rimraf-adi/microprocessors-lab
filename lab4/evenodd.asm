ASSUME CODE:CS DS:DATA    

DATA SEGMENT
    LIST DB 01H,02H,03H,04H,05H
    EVEN_COUNTER DB 01 DUP(0)
    ODD_COUNTER DB 01 DUP(0)
    DATA ENDS

CODE SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           MOV CL, 05H
           MOV SI ,OFFSET LIST
           
           L1:MOV AL,[SI]
           RCR AL,01
 
           JNC EVEN
           INC SI
           INC ODD_COUNTER
           DEC CL 
           JNZ L1   
           
           MOV DL,EVEN_COUNTER
           MOV DH,ODD_COUNTER 
           MOV [DI], AL
           MOV AH,4CH
           INT 21H   
               
           EVEN: 
           INC EVEN_COUNTER
           INC SI
           DEC CL
           JNZ L1
           
         
           CODE ENDS
END START