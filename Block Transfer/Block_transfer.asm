CODE SEGMENT
    ASSUME CS:CODE
START:
    MOV AX, 2000H
    MOV DS, AX      ;This Initializes the DS for Source
    
    MOV AX, 3000H
    MOV ES, AX      ;This Intializes the ES for Destination
    
    MOV SI, 5000H   ;Source pointer or offset address for DS
    MOV DI, 6000H   ;Destination pointer or offset address for ES
    
    MOV CX, 0400H   ;Count
    
    CLD             ;Clear the Direction Flag
    
    REP MOVSB       ;Repeat Move String Byte
    
    MOV AH, 04H
    INT 21H         ;Program Halts and Gives back control to OS

CODE ENDS
     END START




