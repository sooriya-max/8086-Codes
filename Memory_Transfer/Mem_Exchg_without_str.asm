    ASSUME CS:CODE       ; Assume that CS (Code Segment) is equal to CODE

START:
    MOV AX, 2000H        ; Move the value 2000H to the AX register
    MOV DS, AX           ; Move the value in AX to the Data Segment (DS) register
    
    MOV AX, 3000H        ; Move the value 3000H to the AX register
    MOV ES, AX           ; Move the value in AX to the Extra Segment (ES) register
    
    MOV SI, 5000H        ; Initialize Source Index (SI) with the offset 5000H
    MOV DI, 6000H        ; Initialize Destination Index (DI) with the offset 6000H
    
    MOV CL, 0AH          ; Initialize the loop counter (CX) with the value 0AH (10 in decimal)
    
BACK:
    MOV AL, DS:[SI]      ; Move the byte at the address DS:SI into AL (Source Byte)
    MOV AH, ES:[DI]      ; Move the byte at the address ES:DI into AH (Destination Byte)
    
    MOV ES:[DI], AL      ; Move the Source Byte into the Destination address (overwrite the Destination Byte)
    MOV DS:[SI], AH      ; Move the Destination Byte into the Source address (overwrite the Source Byte)
    
    INC SI               ; Increment the Source Index
    INC DI               ; Increment the Destination Index
    
    LOOP BACK            ; Decrement CX and jump to the label BACK if CX is not zero
    
CODE ENDS
    END START            ; End of the code segment with the entry point at START
