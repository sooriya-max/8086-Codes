CODE SEGMENT
    ASSUME CS:CODE
START:
    ; Initialize data segment DS with 2000H
    MOV AX, 2000H
    MOV DS, AX
    
    ; Initialize extra segment ES with 4000H
    MOV AX, 4000H
    MOV ES, AX
    
    ; Set source index SI to 5000H and destination index DI to 8000H
    MOV SI, 5000H
    MOV DI, 8000H
    
    ; Set the counter CX to the number of elements to copy (0AH)
    MOV CX, 0AH
    
    ; Clear direction flag to increment SI and DI after each byte transfer
    CLD
    
    ; Repeat block transfer of CX bytes from DS:SI to ES:DI
    REP MOVSB
    
    ; Move to the next data segment
    MOV AX, 3000H
    MOV DS, AX
    
    ; Move to the next extra segment
    MOV AX, 2000H
    MOV ES, AX
    
    ; Set source index SI to 6000H and destination index DI to 5000H
    MOV SI, 6000H
    MOV DI, 5000H
    
    ; Set the counter CX to the number of elements to copy (0AH)
    MOV CX, 0AH
    
    ; Clear direction flag to increment SI and DI after each byte transfer
    CLD
    
    ; Repeat block transfer of CX bytes from DS:SI to ES:DI
    REP MOVSB
    
    ; Move to the next data segment
    MOV AX, 4000H
    MOV DS, AX
    
    ; Move to the next extra segment
    MOV AX, 3000H
    MOV ES, AX
    
    ; Set source index SI to 8000H and destination index DI to 6000H
    MOV SI, 8000H
    MOV DI, 6000H
    
    ; Set the counter CX to the number of elements to copy (0AH)
    MOV CX, 0AH
    
    ; Clear direction flag to increment SI and DI after each byte transfer
    CLD
    
    ; Repeat block transfer of CX bytes from DS:SI to ES:DI
    REP MOVSB
    
CODE ENDS
    END START
