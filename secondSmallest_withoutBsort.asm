MVI B,03H
start: LXI H,2000H
DCR B
JZ dataOut
MVI C,06H
MOV A,M
nextNumber: INX H
DCR C
JZ replace
CMP M
JC nextNumber
MOV A,M
JMP nextNumber
replace: DCX H
CMP M
JNZ replace
MVI M,0FFH
JMP start
dataOut: STA 2008H
HLT
