* NOR gate subcircuit

.SUBCKT NOR2 in1 in2 out supply ground
MP1 nodo1 in1 supply supply pmos l=45n w=360n
MP2 out in2 nodo1 supply pmos l=45n w=360n
MN1 out in1 ground ground nmos l=45n w=90n
MN2 out in2 ground ground nmos l=45n w=90n
.ends NOR2
