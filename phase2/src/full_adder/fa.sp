* Full Adder subcircuit

.include ../45nm_MGK.pm
.include ../../assets/spice_code/xor.sp
.include ../../assets/spice_code/and.sp
.include ../../assets/spice_code/or.sp

.SUBCKT FA cin in1 in2 cout soma supply ground
Xxor1 in1 in2 in1xorin2 supply ground XOR2
Xxor2 in1xorin2 cin soma supply ground XOR2
Xand1 in1xorin2 cin in1xorin2andcin supply ground AND2
Xand2 in1 in2 in1andin2 supply ground AND2
Xor1 in1xorin2andcin in1andin2 cout supply ground OR2
.ends FA

* Simulation for delay and leakage power
Vdd supply ground 0.9
Vcin cin ground PULSE(0 0.9 0 1n 1n 5n 10n)
Vin1 in1 ground PULSE(0 0.9 5n 1n 1n 5n 10n)
Vin2 in2 ground PULSE(0 0.9 10n 1n 1n 5n 10n)

.tran 0.1n 20n
.measure tran tpdr TRIG v(in1) VAL=0.45 RISE=1 TARG v(soma) VAL=0.45 RISE=1
.measure tran tpdf TRIG v(in1) VAL=0.45 FALL=1 TARG v(soma) VAL=0.45 FALL=1
.measure tran tdelay PARAM='(tpdr+tpdf)/2'
.measure tran iavg AVG(I(Vdd))
.measure tran pleak PARAM='iavg*0.9'
.end
