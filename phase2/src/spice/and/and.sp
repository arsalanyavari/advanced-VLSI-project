* AND gate subcircuit

.include ../45nm_MGK.pm
.include ../../../assets/spice_code/nand.sp
.include ../../../assets/spice_code/inv.sp

.SUBCKT AND2 in1 in2 out supply ground
Xnand1 in1 in2 nodo1 supply ground NAND2
Xinv1 nodo1 out supply ground INV
.ends AND2

Xand in1 in2 out supply ground AND2

* Simulation for delay and leakage power
Vdd supply ground 0.9
Vin1 in1 ground PULSE(0.9 0 5n 0n 0n 5n 10n)
Vin2 in2 ground PULSE(0 0.9 3n 0n 0n 3n 10n)

* Vin1 in1 ground 0
* Vin2 in2 ground 0

.tran 0.1n 20n
.measure tran tpdr TRIG v(in1) VAL=0.45 RISE=1 TARG v(out) VAL=0.45 RISE=1
.measure tran tpdf TRIG v(in1) VAL=0.45 FALL=1 TARG v(out) VAL=0.45 FALL=1
.measure tran tdelay PARAM='(tpdr+tpdf)/2'
.measure trise
+ TRIG v(out) VAL='0.2*0.9' RISE=1
+ TARG v(out) VAL='0.8*0.9' RISE=1
.measure tfall
+ TRIG v(out) VAL='0.8*0.9' FALL=1
+ TARG v(out) VAL='0.2*0.9' FALL=1
.measure tran iavg AVG(I(Vdd))
.measure tran pleak PARAM='iavg*0.9*-1'
.end
