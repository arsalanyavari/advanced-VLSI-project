* Full Adder subcircuit

.SUBCKT FA cin in1 in2 cout soma supply ground
Xxor1 in1 in2 in1xorin2 supply ground XOR2
Xxor2 in1xorin2 cin soma supply ground XOR2
Xand1 in1xorin2 cin in1xorin2andcin supply ground AND2
Xand2 in1 in2 in1andin2 supply ground AND2
Xor1 in1xorin2andcin in1andin2 cout supply ground OR2
.ends FA
