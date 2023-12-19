CODE SEGMENT
    ASSUME CS:CODE
START:
    MOV AX, 4000H
    MOV DS, AX
    
    MOV SI, 2000H
    
    MOV AL, 0
    
    MOV CX, 000AH
    
    
BACK: 
    CMP AL, [SI]
    JNC SKIP    
    MOV AL, [SI]
SKIP:
    INC SI
    LOOP BACK
    
    MOV [SI], AL
    
    MOV AH, 4CH
    INT 21H
CODE ENDS
    END START