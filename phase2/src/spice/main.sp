* Top-level Ripple Carry Adder

.include 45nm_MGK.pm
.include ../assets/spice_code/inv.sp
.include ../assets/spice_code/nand.sp
.include ../assets/spice_code/nor.sp
.include ../assets/spice_code/xor.sp
.include ../assets/spice_code/and.sp
.include ../assets/spice_code/or.sp
.include ../assets/spice_code/fa.sp


Vvdd supply gnd 0.9V
Xfulladder1 0 a0 b0 cout1 sum1 supply ground FA
Xfulladder2 cout1 a1 b1 cout2 sum2 supply ground FA
Xfulladder3 cout2 a2 b2 cout3 sum3 supply ground FA
Xfulladder4 cout3 a3 b3 cout4 sum4 supply ground FA
Xfulladder5 cout4 a4 b4 cout5 sum5 supply ground FA
Xfulladder6 cout5 a5 b5 cout6 sum6 supply ground FA
Xfulladder7 cout6 a6 b6 cout7 sum7 supply ground FA
Xfulladder8 cout7 a7 b7 cout8 sum8 supply ground FA

* Simulation settings
Va0 a0 ground pwl(0n 0 1n 0 1.01n 0.9)
Va1 a1 ground 0.9
Va2 a2 ground 0.9
Va3 a3 ground 0.9
Va4 a4 ground 0.9
Va5 a5 ground 0.9
Va6 a6 ground 0.9
Va7 a7 ground 0.9

Vb0 b0 ground 0.9
Vb1 b1 ground 0.0
Vb2 b2 ground 0.0
Vb3 b3 ground 0.0
Vb4 b4 ground 0.0
Vb5 b5 ground 0.0
Vb6 b6 ground 0.0
Vb7 b7 ground 0.0

.measure tran critico trig v(a0) val=0.45 rise=1 targ v(cout8) val=0.45 rise=1
.tran 2p 4n
.end
