
module one_bit_adder_7 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11;

  NAND2_X2 U1 ( .A1(n6), .A2(n7), .ZN(Sum) );
  NAND2_X2 U2 ( .A1(n8), .A2(Cin), .ZN(n7) );
  NAND2_X2 U3 ( .A1(AxorB_out), .A2(n5), .ZN(n6) );
  INV_X4 U10 ( .A(n8), .ZN(AxorB_out) );
  INV_X4 U11 ( .A(n9), .ZN(Cout) );
  INV_X4 U12 ( .A(A), .ZN(n3) );
  INV_X4 U13 ( .A(B), .ZN(n4) );
  INV_X4 U14 ( .A(Cin), .ZN(n5) );
  NOR2_X2 U4 ( .A1(PandCin_out), .A2(AandB_out), .ZN(n9) );
  NOR2_X2 U5 ( .A1(n3), .A2(n4), .ZN(AandB_out) );
  NOR2_X2 U6 ( .A1(n5), .A2(n8), .ZN(PandCin_out) );
  NOR2_X2 U7 ( .A1(n10), .A2(n11), .ZN(n8) );
  NOR2_X2 U8 ( .A1(n3), .A2(B), .ZN(n10) );
  NOR2_X2 U9 ( .A1(n4), .A2(A), .ZN(n11) );
endmodule


module one_bit_adder_0 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2, n10, n11, n12, n13, n14, n15, n16;

  NAND2_X2 U1 ( .A1(n13), .A2(n12), .ZN(Sum) );
  NAND2_X2 U2 ( .A1(n11), .A2(Cin), .ZN(n12) );
  NAND2_X2 U3 ( .A1(AxorB_out), .A2(n14), .ZN(n13) );
  INV_X4 U10 ( .A(n11), .ZN(AxorB_out) );
  INV_X4 U11 ( .A(n10), .ZN(Cout) );
  INV_X4 U12 ( .A(A), .ZN(n16) );
  INV_X4 U13 ( .A(B), .ZN(n15) );
  INV_X4 U14 ( .A(Cin), .ZN(n14) );
  NOR2_X2 U4 ( .A1(PandCin_out), .A2(AandB_out), .ZN(n10) );
  NOR2_X2 U5 ( .A1(n16), .A2(n15), .ZN(AandB_out) );
  NOR2_X2 U6 ( .A1(n14), .A2(n11), .ZN(PandCin_out) );
  NOR2_X2 U7 ( .A1(n2), .A2(n1), .ZN(n11) );
  NOR2_X2 U8 ( .A1(n16), .A2(B), .ZN(n2) );
  NOR2_X2 U9 ( .A1(n15), .A2(A), .ZN(n1) );
endmodule


module one_bit_adder_1 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2, n10, n11, n12, n13, n14, n15, n16;

  NAND2_X2 U1 ( .A1(n13), .A2(n12), .ZN(Sum) );
  NAND2_X2 U2 ( .A1(n11), .A2(Cin), .ZN(n12) );
  NAND2_X2 U3 ( .A1(AxorB_out), .A2(n14), .ZN(n13) );
  INV_X4 U10 ( .A(n11), .ZN(AxorB_out) );
  INV_X4 U11 ( .A(n10), .ZN(Cout) );
  INV_X4 U12 ( .A(A), .ZN(n16) );
  INV_X4 U13 ( .A(B), .ZN(n15) );
  INV_X4 U14 ( .A(Cin), .ZN(n14) );
  NOR2_X2 U4 ( .A1(PandCin_out), .A2(AandB_out), .ZN(n10) );
  NOR2_X2 U5 ( .A1(n16), .A2(n15), .ZN(AandB_out) );
  NOR2_X2 U6 ( .A1(n14), .A2(n11), .ZN(PandCin_out) );
  NOR2_X2 U7 ( .A1(n2), .A2(n1), .ZN(n11) );
  NOR2_X2 U8 ( .A1(n16), .A2(B), .ZN(n2) );
  NOR2_X2 U9 ( .A1(n15), .A2(A), .ZN(n1) );
endmodule


module one_bit_adder_2 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2, n10, n11, n12, n13, n14, n15, n16;

  NAND2_X2 U1 ( .A1(n13), .A2(n12), .ZN(Sum) );
  NAND2_X2 U2 ( .A1(n11), .A2(Cin), .ZN(n12) );
  NAND2_X2 U3 ( .A1(AxorB_out), .A2(n14), .ZN(n13) );
  INV_X4 U10 ( .A(n11), .ZN(AxorB_out) );
  INV_X4 U11 ( .A(n10), .ZN(Cout) );
  INV_X4 U12 ( .A(A), .ZN(n16) );
  INV_X4 U13 ( .A(B), .ZN(n15) );
  INV_X4 U14 ( .A(Cin), .ZN(n14) );
  NOR2_X2 U4 ( .A1(PandCin_out), .A2(AandB_out), .ZN(n10) );
  NOR2_X2 U5 ( .A1(n16), .A2(n15), .ZN(AandB_out) );
  NOR2_X2 U6 ( .A1(n14), .A2(n11), .ZN(PandCin_out) );
  NOR2_X2 U7 ( .A1(n2), .A2(n1), .ZN(n11) );
  NOR2_X2 U8 ( .A1(n16), .A2(B), .ZN(n2) );
  NOR2_X2 U9 ( .A1(n15), .A2(A), .ZN(n1) );
endmodule


module one_bit_adder_3 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2, n10, n11, n12, n13, n14, n15, n16;

  NAND2_X2 U1 ( .A1(n13), .A2(n12), .ZN(Sum) );
  NAND2_X2 U2 ( .A1(n11), .A2(Cin), .ZN(n12) );
  NAND2_X2 U3 ( .A1(AxorB_out), .A2(n14), .ZN(n13) );
  INV_X4 U10 ( .A(n11), .ZN(AxorB_out) );
  INV_X4 U11 ( .A(n10), .ZN(Cout) );
  INV_X4 U12 ( .A(A), .ZN(n16) );
  INV_X4 U13 ( .A(B), .ZN(n15) );
  INV_X4 U14 ( .A(Cin), .ZN(n14) );
  NOR2_X2 U4 ( .A1(PandCin_out), .A2(AandB_out), .ZN(n10) );
  NOR2_X2 U5 ( .A1(n16), .A2(n15), .ZN(AandB_out) );
  NOR2_X2 U6 ( .A1(n14), .A2(n11), .ZN(PandCin_out) );
  NOR2_X2 U7 ( .A1(n2), .A2(n1), .ZN(n11) );
  NOR2_X2 U8 ( .A1(n16), .A2(B), .ZN(n2) );
  NOR2_X2 U9 ( .A1(n15), .A2(A), .ZN(n1) );
endmodule


module one_bit_adder_4 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2, n10, n11, n12, n13, n14, n15, n16;

  NAND2_X2 U1 ( .A1(n13), .A2(n12), .ZN(Sum) );
  NAND2_X2 U2 ( .A1(n11), .A2(Cin), .ZN(n12) );
  NAND2_X2 U3 ( .A1(AxorB_out), .A2(n14), .ZN(n13) );
  INV_X4 U10 ( .A(n11), .ZN(AxorB_out) );
  INV_X4 U11 ( .A(n10), .ZN(Cout) );
  INV_X4 U12 ( .A(A), .ZN(n16) );
  INV_X4 U13 ( .A(B), .ZN(n15) );
  INV_X4 U14 ( .A(Cin), .ZN(n14) );
  NOR2_X2 U4 ( .A1(PandCin_out), .A2(AandB_out), .ZN(n10) );
  NOR2_X2 U5 ( .A1(n16), .A2(n15), .ZN(AandB_out) );
  NOR2_X2 U6 ( .A1(n14), .A2(n11), .ZN(PandCin_out) );
  NOR2_X2 U7 ( .A1(n2), .A2(n1), .ZN(n11) );
  NOR2_X2 U8 ( .A1(n16), .A2(B), .ZN(n2) );
  NOR2_X2 U9 ( .A1(n15), .A2(A), .ZN(n1) );
endmodule


module one_bit_adder_5 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2, n10, n11, n12, n13, n14, n15, n16;

  NAND2_X2 U1 ( .A1(n13), .A2(n12), .ZN(Sum) );
  NAND2_X2 U2 ( .A1(n11), .A2(Cin), .ZN(n12) );
  NAND2_X2 U3 ( .A1(AxorB_out), .A2(n14), .ZN(n13) );
  INV_X4 U10 ( .A(n11), .ZN(AxorB_out) );
  INV_X4 U11 ( .A(n10), .ZN(Cout) );
  INV_X4 U12 ( .A(A), .ZN(n16) );
  INV_X4 U13 ( .A(B), .ZN(n15) );
  INV_X4 U14 ( .A(Cin), .ZN(n14) );
  NOR2_X2 U4 ( .A1(PandCin_out), .A2(AandB_out), .ZN(n10) );
  NOR2_X2 U5 ( .A1(n16), .A2(n15), .ZN(AandB_out) );
  NOR2_X2 U6 ( .A1(n14), .A2(n11), .ZN(PandCin_out) );
  NOR2_X2 U7 ( .A1(n2), .A2(n1), .ZN(n11) );
  NOR2_X2 U8 ( .A1(n16), .A2(B), .ZN(n2) );
  NOR2_X2 U9 ( .A1(n15), .A2(A), .ZN(n1) );
endmodule


module one_bit_adder_6 ( A, B, Cin, Sum, Cout, AxorB_out, AandB_out, 
        PandCin_out );
  input A, B, Cin;
  output Sum, Cout, AxorB_out, AandB_out, PandCin_out;
  wire   n1, n2, n10, n11, n12, n13, n14, n15, n16;

  NAND2_X2 U1 ( .A1(n13), .A2(n12), .ZN(Sum) );
  NAND2_X2 U2 ( .A1(n11), .A2(Cin), .ZN(n12) );
  NAND2_X2 U3 ( .A1(AxorB_out), .A2(n14), .ZN(n13) );
  INV_X4 U10 ( .A(n11), .ZN(AxorB_out) );
  INV_X4 U11 ( .A(n10), .ZN(Cout) );
  INV_X4 U12 ( .A(A), .ZN(n16) );
  INV_X4 U13 ( .A(B), .ZN(n15) );
  INV_X4 U14 ( .A(Cin), .ZN(n14) );
  NOR2_X2 U4 ( .A1(PandCin_out), .A2(AandB_out), .ZN(n10) );
  NOR2_X2 U5 ( .A1(n16), .A2(n15), .ZN(AandB_out) );
  NOR2_X2 U6 ( .A1(n14), .A2(n11), .ZN(PandCin_out) );
  NOR2_X2 U7 ( .A1(n2), .A2(n1), .ZN(n11) );
  NOR2_X2 U8 ( .A1(n16), .A2(B), .ZN(n2) );
  NOR2_X2 U9 ( .A1(n15), .A2(A), .ZN(n1) );
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

