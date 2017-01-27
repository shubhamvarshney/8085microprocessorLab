LXI H,2000H         ;initialize pointer to point at first number's location
MVI B,06H           ;initialize count
MOV A,M             ;Copy first number to Accumulator
nextNumber: INX H   ;increment pointer to point at next number
DCR B               ;decrement count
JZ dataOut          ;check if all numbers have been tested or not, if not then proceed to next step else jump to dataOut
CMP M               ;compare the already set next number with number in accumulator
JC nextNumber       ;if number in accumulator<number at location M then jump to nextNumber else proceed to next step
MOV A,M             ;copy the new smaller number into accumulator
JMP nextNumber      ;jump to nextNumber
dataOut: STA 2009H  ;output number in accumulator to location 2009H
HLT                 ;stop
