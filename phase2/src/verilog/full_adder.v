module full_adder
#(parameter INPUT_SIZE = 8)
(
    A,
    B,
    Cin,
    Sum,
    Cout,
    AxorB_out,
    AandB_out,
    PandCin_out,
    Cin_out
);
input [INPUT_SIZE - 1 : 0] A;
input [INPUT_SIZE - 1: 0] B;
input Cin;

output [INPUT_SIZE - 1 : 0] Sum;
output Cout;

output [INPUT_SIZE - 1 : 0] AxorB_out;
output [INPUT_SIZE - 1 : 0] AandB_out;
output [INPUT_SIZE - 1 : 0] PandCin_out;

output [INPUT_SIZE - 1 : 0] Cin_out;

wire [INPUT_SIZE - 1 : 0] C;

genvar i; // generates a variable

generate
    for (i = 0; i < INPUT_SIZE; i = i + 1)
    begin: ripple_adder_gen
    one_bit_adder ADDER (
        .A(A[i]),
        .B(B[i]),
        .Cin(i == 0 ? Cin : C[i-1]),
        .Sum(Sum[i]),
        .Cout(C[i]),
        .AxorB_out(AxorB_out[i]),
        .AandB_out(AandB_out[i]),
        .PandCin_out(PandCin_out[i])
    );
    end 

endgenerate

assign Cout = C[7];
assign Cin_out = C;

endmodule
