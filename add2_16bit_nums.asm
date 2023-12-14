DATA SEGMENT
A DW 0F256H ; DW is used for 16-bit variables
B DW 0F009H
CARRY DB 00H
SUM DW ?    ; '?' is a valid character in a instruction as we don't know what the value of sum is 
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV AX, DATA
    MOV DS, AX
    
    ; Load values of A and B into AX
    MOV AX, A
    ADD AX, B
    
    ; Check if there is a carry
    JNC SKIP
    
    ; If there is a carry, increment the CARRY variable
    INC CARRY
SKIP:
    ; Move the result to the SUM variable
    MOV SUM, AX
    
    
    MOV AH, 4CH
    INT 21H
    ;INT 21H is used for various purposes like getting user input strings or displaying them or Terminating the Program
    ;Here when AH has the value of 4CH and INT 21H its for terminating the program and Giving the control back to DOS

CODE ENDS
END START
