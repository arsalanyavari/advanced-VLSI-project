* Top-level Ripple Carry Adder

.include 45nm_MGK.pm
.include ../assets/spice_code/inv.sp
.include ../assets/spice_code/nand.sp
.include ../assets/spice_code/nor.sp
.include ../assets/spice_code/xor.sp
.include ../assets/spice_code/and.sp
.include ../assets/spice_code/or.sp
.include ../assets/spice_code/fa.sp


Vvdd fonte gnd 0.9V
Xfulladder1 0 a0 b0 cout1 sum1 fonte gnd FA
Xfulladder2 cout1 a1 b1 cout2 sum2 fonte gnd FA
Xfulladder3 cout2 a2 b2 cout3 sum3 fonte gnd FA
Xfulladder4 cout3 a3 b3 cout4 sum4 fonte gnd FA
Xfulladder5 cout4 a4 b4 cout5 sum5 fonte gnd FA
Xfulladder6 cout5 a5 b5 cout6 sum6 fonte gnd FA
Xfulladder7 cout6 a6 b6 cout7 sum7 fonte gnd FA
Xfulladder8 cout7 a7 b7 cout8 sum8 fonte gnd FA

* Simulation settings
Va0 a0 gnd pwl(0n 0 1n 0 1.01n 0.9)
Va1 a1 gnd 0.9
Va2 a2 gnd 0.9
Va3 a3 gnd 0.9
Va4 a4 gnd 0.9
Va5 a5 gnd 0.9
Va6 a6 gnd 0.9
Va7 a7 gnd 0.9

Vb0 b0 gnd 0.9
Vb1 b1 gnd 0.0
Vb2 b2 gnd 0.0
Vb3 b3 gnd 0.0
Vb4 b4 gnd 0.0
Vb5 b5 gnd 0.0
Vb6 b6 gnd 0.0
Vb7 b7 gnd 0.0

.measure tran critico trig v(a0) val=0.45 rise=1 targ v(cout8) val=0.45 rise=1
.tran 2p 4n
.end
