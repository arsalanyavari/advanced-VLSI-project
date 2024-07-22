
module one_bit_adder_7 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n3, n4;

  XOR2_X2 U1 ( .A(Cin), .B(AxorB_out), .Z(Sum) );
  NAND2_X2 U2 ( .A1(n3), .A2(n4), .ZN(Cout) );
  NAND2_X2 U3 ( .A1(Cin), .A2(AxorB_out), .ZN(n3) );
  XOR2_X2 U4 ( .A(B), .B(A), .Z(AxorB_out) );
  NAND2_X2 U5 ( .A1(A), .A2(B), .ZN(n4) );
  INV_X4 U6 ( .A(n3), .ZN(PandCin_out) );
  INV_X4 U7 ( .A(n4), .ZN(AandB_out) );
endmodule


module one_bit_adder_0 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2;

  XOR2_X2 U1 ( .A(Cin), .B(AxorB_out), .Z(Sum) );
  NAND2_X2 U2 ( .A1(n2), .A2(n1), .ZN(Cout) );
  NAND2_X2 U3 ( .A1(Cin), .A2(AxorB_out), .ZN(n2) );
  XOR2_X2 U4 ( .A(B), .B(A), .Z(AxorB_out) );
  NAND2_X2 U5 ( .A1(A), .A2(B), .ZN(n1) );
  INV_X4 U6 ( .A(n2), .ZN(PandCin_out) );
  INV_X4 U7 ( .A(n1), .ZN(AandB_out) );
endmodule


module one_bit_adder_1 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2;

  XOR2_X2 U1 ( .A(Cin), .B(AxorB_out), .Z(Sum) );
  NAND2_X2 U2 ( .A1(n2), .A2(n1), .ZN(Cout) );
  NAND2_X2 U3 ( .A1(Cin), .A2(AxorB_out), .ZN(n2) );
  XOR2_X2 U4 ( .A(B), .B(A), .Z(AxorB_out) );
  NAND2_X2 U5 ( .A1(A), .A2(B), .ZN(n1) );
  INV_X4 U6 ( .A(n2), .ZN(PandCin_out) );
  INV_X4 U7 ( .A(n1), .ZN(AandB_out) );
endmodule


module one_bit_adder_2 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2;

  XOR2_X2 U1 ( .A(Cin), .B(AxorB_out), .Z(Sum) );
  NAND2_X2 U2 ( .A1(n2), .A2(n1), .ZN(Cout) );
  NAND2_X2 U3 ( .A1(Cin), .A2(AxorB_out), .ZN(n2) );
  XOR2_X2 U4 ( .A(B), .B(A), .Z(AxorB_out) );
  NAND2_X2 U5 ( .A1(A), .A2(B), .ZN(n1) );
  INV_X4 U6 ( .A(n2), .ZN(PandCin_out) );
  INV_X4 U7 ( .A(n1), .ZN(AandB_out) );
endmodule


module one_bit_adder_3 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2;

  XOR2_X2 U1 ( .A(Cin), .B(AxorB_out), .Z(Sum) );
  NAND2_X2 U2 ( .A1(n2), .A2(n1), .ZN(Cout) );
  NAND2_X2 U3 ( .A1(Cin), .A2(AxorB_out), .ZN(n2) );
  XOR2_X2 U4 ( .A(B), .B(A), .Z(AxorB_out) );
  NAND2_X2 U5 ( .A1(A), .A2(B), .ZN(n1) );
  INV_X4 U6 ( .A(n2), .ZN(PandCin_out) );
  INV_X4 U7 ( .A(n1), .ZN(AandB_out) );
endmodule


module one_bit_adder_4 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2;

  XOR2_X2 U1 ( .A(Cin), .B(AxorB_out), .Z(Sum) );
  NAND2_X2 U2 ( .A1(n2), .A2(n1), .ZN(Cout) );
  NAND2_X2 U3 ( .A1(Cin), .A2(AxorB_out), .ZN(n2) );
  XOR2_X2 U4 ( .A(B), .B(A), .Z(AxorB_out) );
  NAND2_X2 U5 ( .A1(A), .A2(B), .ZN(n1) );
  INV_X4 U6 ( .A(n2), .ZN(PandCin_out) );
  INV_X4 U7 ( .A(n1), .ZN(AandB_out) );
endmodule


module one_bit_adder_5 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2;

  XOR2_X2 U1 ( .A(Cin), .B(AxorB_out), .Z(Sum) );
  NAND2_X2 U2 ( .A1(n2), .A2(n1), .ZN(Cout) );
  NAND2_X2 U3 ( .A1(Cin), .A2(AxorB_out), .ZN(n2) );
  XOR2_X2 U4 ( .A(B), .B(A), .Z(AxorB_out) );
  NAND2_X2 U5 ( .A1(A), .A2(B), .ZN(n1) );
  INV_X4 U6 ( .A(n2), .ZN(PandCin_out) );
  INV_X4 U7 ( .A(n1), .ZN(AandB_out) );
endmodule


module one_bit_adder_6 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2;

  XOR2_X2 U1 ( .A(Cin), .B(AxorB_out), .Z(Sum) );
  NAND2_X2 U2 ( .A1(n2), .A2(n1), .ZN(Cout) );
  NAND2_X2 U3 ( .A1(Cin), .A2(AxorB_out), .ZN(n2) );
  XOR2_X2 U4 ( .A(B), .B(A), .Z(AxorB_out) );
  NAND2_X2 U5 ( .A1(A), .A2(B), .ZN(n1) );
  INV_X4 U6 ( .A(n2), .ZN(PandCin_out) );
  INV_X4 U7 ( .A(n1), .ZN(AandB_out) );
endmodule


module full_adder ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, PandCin_out, 
        Cin_out );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  output [7:0] AxorB_out;
  output [7:0] AandB_out;
  output [7:0] PandCin_out;
  output [7:0] Cin_out;
  input Cin;
  output Cout;

  assign Cout = Cin_out[7];

  one_bit_adder_7 \ripple_adder_gen[0].ADDER  ( .A(A[0]), .B(B[0]), .Cin(Cin), 
        .Sum(Sum[0]), .Cout(Cin_out[0]), .AxorB_out(AxorB_out[0]), .AandB_out(
        AandB_out[0]), .PandCin_out(PandCin_out[0]) );
  one_bit_adder_6 \ripple_adder_gen[1].ADDER  ( .A(A[1]), .B(B[1]), .Cin(
        Cin_out[0]), .Sum(Sum[1]), .Cout(Cin_out[1]), .AxorB_out(AxorB_out[1]), 
        .AandB_out(AandB_out[1]), .PandCin_out(PandCin_out[1]) );
  one_bit_adder_5 \ripple_adder_gen[2].ADDER  ( .A(A[2]), .B(B[2]), .Cin(
        Cin_out[1]), .Sum(Sum[2]), .Cout(Cin_out[2]), .AxorB_out(AxorB_out[2]), 
        .AandB_out(AandB_out[2]), .PandCin_out(PandCin_out[2]) );
  one_bit_adder_4 \ripple_adder_gen[3].ADDER  ( .A(A[3]), .B(B[3]), .Cin(
        Cin_out[2]), .Sum(Sum[3]), .Cout(Cin_out[3]), .AxorB_out(AxorB_out[3]), 
        .AandB_out(AandB_out[3]), .PandCin_out(PandCin_out[3]) );
  one_bit_adder_3 \ripple_adder_gen[4].ADDER  ( .A(A[4]), .B(B[4]), .Cin(
        Cin_out[3]), .Sum(Sum[4]), .Cout(Cin_out[4]), .AxorB_out(AxorB_out[4]), 
        .AandB_out(AandB_out[4]), .PandCin_out(PandCin_out[4]) );
  one_bit_adder_2 \ripple_adder_gen[5].ADDER  ( .A(A[5]), .B(B[5]), .Cin(
        Cin_out[4]), .Sum(Sum[5]), .Cout(Cin_out[5]), .AxorB_out(AxorB_out[5]), 
        .AandB_out(AandB_out[5]), .PandCin_out(PandCin_out[5]) );
  one_bit_adder_1 \ripple_adder_gen[6].ADDER  ( .A(A[6]), .B(B[6]), .Cin(
        Cin_out[5]), .Sum(Sum[6]), .Cout(Cin_out[6]), .AxorB_out(AxorB_out[6]), 
        .AandB_out(AandB_out[6]), .PandCin_out(PandCin_out[6]) );
  one_bit_adder_0 \ripple_adder_gen[7].ADDER  ( .A(A[7]), .B(B[7]), .Cin(
        Cin_out[6]), .Sum(Sum[7]), .Cout(Cin_out[7]), .AxorB_out(AxorB_out[7]), 
        .AandB_out(AandB_out[7]), .PandCin_out(PandCin_out[7]) );
endmodule

