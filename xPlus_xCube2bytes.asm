;This code can calculate x(1+x^2) accurately till x=40.
;From x=41 to x=255, the code drops third byte and calculates only two bytes.

MVI B,02H
LXI H,0000H
LXI D,0000H
LHLD 3000H
XCHG
forCube: LXI H,3000H
MOV C,M
DCR C
LXI H,0000H
DAD D
addLoop: DAD D
countDecrement: DCR C
JNZ addLoop
SHLD 300AH
XCHG
LHLD 300AH
DCR B
JNZ forCube
LHLD 3000H
DAD D
XCHG
LXI H,300CH
MOV B,M
XCHG
SHLD 300AH
HLT
