CODE SEGMENT
    ASSUME CS:CODE
START:
    MOV AX, 2000H
    MOV DS, AX
    
    MOV AX, 3000H
    MOV ES, AX
    
    MOV SI, 5000H
    
    MOV DI, 6000H
    
    MOV CL, 0AH
    
BACK:    
    MOV AL, DS:[SI]
    MOV AH, ES:[DI]
    
    MOV ES:[DI], AL
    MOV DS:[SI], AH
    
    INC SI
    INC DI
    
    LOOP BACK 
    
    
CODE ENDS
     END START