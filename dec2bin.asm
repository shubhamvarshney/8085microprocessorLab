LHLD 2000H
MOV D,H
MOV E,L
LXI H,3000H
MVI B,07H
againH: LDA 2002H
MOV C,A
MOV A,D
STC
CMC
shift: RAR
STC
CMC
DCR C
JNZ shift
ANI 01H
MOV M,A
LDA 2002H
DCR A
STA 2002H
INX H
DCR B
JNZ againH
MOV A,D
ANI 01H
MOV M,A
INX H
MVI A,07H
STA 2002H
MVI B,07H
againL: LDA 2002H
MOV C,A
MOV A,E
STC
CMC
shiftL: RAR
STC
CMC
DCR C
JNZ shiftL
ANI 01H
MOV M,A
LDA 2002H
DCR A
STA 2002H
INX H
DCR B
JNZ againL
MOV A,E
ANI 01H
MOV M,A
INX H
MVI A,07H
STA 2002H
MVI A,07H
STA 2002H
HLT