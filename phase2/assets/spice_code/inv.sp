* Inverter subcircuit

.SUBCKT INV in out supply ground
M1 out in supply supply pmos l=45n w=180n
M2 out in ground ground nmos l=45n w=90n
.ends INV
