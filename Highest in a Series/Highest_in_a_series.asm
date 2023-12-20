CODE SEGMENT
    ASSUME CS:CODE
START:
    ; Initialize Data Segment (DS) with 4000H
    MOV AX, 4000H
    MOV DS, AX
    
    ; Initialize Source Index (SI) with 2000H
    MOV SI, 2000H
    
    ; Initialize AL register to 0
    MOV AL, 0
    
    ; Set loop count to 000AH (10 iterations)
    MOV CX, 000AH
    
BACK: 
    ; Compare AL with the byte at the memory location pointed by SI
    CMP AL, [SI]
    
    ; Jump to SKIP if no carry (AL >= [SI])
    JNC SKIP
    
    ; Move the byte at the memory location pointed by SI to AL
    MOV AL, [SI]
    
SKIP:
    ; Increment SI to move to the next byte
    INC SI
    
    ; Decrement CX (loop count)
    LOOP BACK
    
    ; Store the final value of AL at the memory location pointed by SI
    MOV [SI], AL
    
    ; Prepare for program termination
    MOV AH, 4CH
    INT 21H
CODE ENDS
    END START
