Block Transfer is an important and Common Functionality that we use every day.
Here Block Transfer is done with the Instruction - "MOVSB" stands for Move String Byte where it transfers the byte from source to Destination and Increaments the Source and Destination , all in one single instruction
the "REP" just repeats it until Count gets to zero
There are some rules to be Followed While using the String Instruction:
  ->The Source Segment must be DS and Destination Segment must be ES
  ->The offset addresses must be SI for Source and DI for Destination
  ->The Count must always be in CX register
  ->The Direction (Asc/Dsc) must be given by Direction Flag


Images in the "Block Transfer" Folder

1). Source
2). Destination
3). Final_destination
