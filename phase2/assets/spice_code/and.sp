* AND gate subcircuit

.SUBCKT AND2 in1 in2 out supply ground
Xnand1 in1 in2 nodo1 supply ground NAND2
Xinv1 nodo1 out supply ground INV
.ends AND2
