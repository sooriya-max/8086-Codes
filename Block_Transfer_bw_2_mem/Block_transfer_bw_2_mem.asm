CODE SEGMENT
    ASSUME CS:CODE
START:
    MOV AX, 2000H
    MOV DS, AX
    
    MOV AX, 4000H
    MOV ES, AX
    
    MOV SI, 5000H
    MOV DI, 8000H
    
    MOV CX, 0AH
    
    CLD
    
    REP MOVSB
    
    
    MOV AX, 3000H
    MOV DS, AX
    
    MOV AX, 2000H
    MOV ES, AX
    
    MOV SI, 6000H
    MOV DI, 5000H
    
    MOV CX, 0AH
    
    CLD
    
    REP MOVSB
    
    
    MOV AX, 4000H
    MOV DS, AX
    
    MOV AX, 3000H
    MOV ES, AX
    
    MOV SI, 8000H
    MOV DI, 6000H
    
    MOV CX, 0AH
    
    CLD
    
    REP MOVSB
    
CODE ENDS
     END START