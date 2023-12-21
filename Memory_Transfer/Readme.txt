Initialization:

Sets up the Data Segment (DS) and Extra Segment (ES) registers with the values 2000H and 3000H, respectively.
Initializes Source Index (SI) with the offset 5000H and Destination Index (DI) with the offset 6000H.
Sets up a loop counter (CX) with the value 0AH (10 in decimal).


Byte Swap Loop:

Utilizes a loop labeled as "BACK" to swap each byte between the source and destination memory regions.This Instruction can be used only with CX register holding the count.
Reads a byte from the source address (DS:SI) into AL and a byte from the destination address (ES:DI) into AH.
Swaps the bytes by writing the source byte into the destination address and vice versa.
Increments the Source Index (SI) and Destination Index (DI).
Repeats the process for a total of 10 iterations.


Feel free to modify and experiment with the code according to your needs.
