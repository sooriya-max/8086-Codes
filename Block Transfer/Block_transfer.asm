CODE SEGMENT
    ASSUME CS:CODE
START:
    MOV AX, 2000H
    MOV DS, AX
    
    MOV AX, 3000H
    MOV ES, AX
    
    MOV SI, 5000H
    MOV DI, 6000H
    
    MOV CX, 0400H
    
    CLD
    
    REP MOVSB
    
    MOV AH, 04H
    INT 21H

CODE ENDS
     END START




