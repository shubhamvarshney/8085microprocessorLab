MVI D,06H
loop: LXI H,2000H
MVI C,06H
again: MOV A,M
nextNumber: INX H
DCR C
JZ mainDecrement
CMP M
JNC swap
MOV A,M
JMP nextNumber
swap: MOV B,M
MOV M,A
DCX H
MOV M,B
INX H
JMP again
mainDecrement: DCR D
JZ end
JMP loop
end: HLT
