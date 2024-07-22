* NAND gate subcircuit

.include ../45nm_MGK.pm

.SUBCKT NAND2 in1 in2 out supply ground
MP1 out in1 supply supply pmos l=45n w=180n
MP2 out in2 supply supply pmos l=45n w=180n
MN1 out in1 nodo1 ground nmos l=45n w=180n
MN2 nodo1 in2 ground ground nmos l=45n w=180n
.ends NAND2

Xnand in1 in2 out supply ground NAND2

* Simulation for delay and leakage power
Vdd supply ground 0.9
Vin1 in1 ground PULSE(0 0.9 0 1n 1n 5n 10n)
Vin2 in2 ground PULSE(0 0.9 5n 1n 1n 5n 10n)

.tran 0.1n 20n
.measure tran tpdr TRIG v(in1) VAL=0.45 RISE=1 TARG v(out) VAL=0.45 RISE=1
.measure tran tpdf TRIG v(in1) VAL=0.45 FALL=1 TARG v(out) VAL=0.45 FALL=1
.measure tran tdelay PARAM='(tpdr+tpdf)/2'
.measure tran iavg AVG(I(Vdd))
.measure tran pleak PARAM='iavg*0.9*-1'
.end
