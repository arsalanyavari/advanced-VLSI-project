* XOR gate subcircuit

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
