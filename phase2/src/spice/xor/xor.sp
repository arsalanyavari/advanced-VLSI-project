* XOR gate subcircuit

.include ../45nm_MGK.pm
.include ../../../assets/spice_code/inv.sp

.SUBCKT XOR2 in1 in2 out supply ground
Xinv1 in1 in1_n supply ground INV
Xinv2 in2 in2_n supply ground INV
MP1 nodo1 in1_n supply supply pmos l=45n w=360n
MP2 out in2 nodo1 supply pmos l=45n w=360n
MP3 nodo2 in1 supply supply pmos l=45n w=360n
MP4 out in2_n nodo2 supply pmos l=45n w=360n
MN1 out in2_n nodo3 ground nmos l=45n w=180n
MN2 nodo3 in1_n ground ground nmos l=45n w=180n
MN3 out in2 nodo4 ground nmos l=45n w=180n
MN4 nodo4 in1 ground ground nmos l=45n w=180n
.ends XOR2

Xxor in1 in2 out supply ground XOR2

* Simulation for delay and leakage power
Vdd supply ground 0.9
* Vin1 in1 ground PULSE(0.9 0 5n 0n 0n 3n 10n)
* Vin2 in2 ground PULSE(0 0.9 3n 0n 0n 3n 10n)

Vin1 in1 ground 0
Vin2 in2 ground 0

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
