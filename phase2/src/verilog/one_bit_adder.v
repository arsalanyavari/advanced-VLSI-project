module one_bit_adder(
    A,
    B,
    Cin,
    Sum,
    Cout,
    AxorB_out,
    AandB_out,
    PandCin_out
);

input A;
input B;
input Cin;

output Sum;
output Cout;

output AxorB_out;
output AandB_out;
output PandCin_out;

wire AxorB;
wire AandB;
wire PandCin;

assign AxorB = A ^ B;
assign AandB = A & B;
assign PandCin = AxorB & Cin;

assign Sum = AxorB ^ Cin;
assign Cout = AandB | PandCin;

assign AxorB_out = AxorB;
assign AandB_out = AandB;
assign PandCin_out = PandCin;

//assign Cout = (A & B) | (Cin & (A ^ B));

endmodule

