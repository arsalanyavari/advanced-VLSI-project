* Inverter subcircuit

.SUBCKT INV in out supply ground
M1 out in supply supply pmos l=45n w=180n
M2 out in ground ground nmos l=45n w=90n
.ends INV

* Simulation for delay and leakage power
Vdd supply ground 0.9
Vin in ground PULSE(0 0.9 0 1n 1n 5n 10n)

.tran 0.1n 20n
.measure tran tpdr TRIG v(in) VAL=0.45 RISE=1 TARG v(out) VAL=0.45 RISE=1
.measure tran tpdf TRIG v(in) VAL=0.45 FALL=1 TARG v(out) VAL=0.45 FALL=1
.measure tran tdelay PARAM='(tpdr+tpdf)/2'
.measure tran iavg AVG(I(Vdd))
.measure tran pleak PARAM='iavg*0.9'
.end
