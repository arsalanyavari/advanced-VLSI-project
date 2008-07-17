* NAND gate subcircuit

.SUBCKT NAND2 in1 in2 out supply ground
MP1 out in1 supply supply pmos l=45n w=180n
MP2 out in2 supply supply pmos l=45n w=180n
MN1 out in1 nodo1 ground nmos l=45n w=180n
MN2 nodo1 in2 ground ground nmos l=45n w=180n
.ends NAND2
