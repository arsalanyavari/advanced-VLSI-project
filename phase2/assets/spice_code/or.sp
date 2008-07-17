* OR gate subcircuit

.SUBCKT OR2 in1 in2 out supply ground
Xnor1 in1 in2 nodo1 supply ground NOR2
Xinv1 nodo1 out supply ground INV
.ends OR2
