
module booth_multiplier ( clk, reset, multiplicand, multiplier, product, done
 );
  input [3:0] multiplicand;
  input [3:0] multiplier;
  output [7:0] product;
  input clk, reset;
  output done;
  wire   Q_1, n1, n19, n27, n29, n30, n31, n32, n34, n35, n36, n38, n40, n41,
         n42, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105;
  wire   [3:0] Q;
  wire   [3:0] A;
  wire   [3:0] M;
  wire   [2:0] count;
  assign product[7] = product[6];

  DLH_X1 \M_reg[3]  ( .G(reset), .D(multiplicand[3]), .Q(M[3]) );
  DLH_X1 \M_reg[2]  ( .G(reset), .D(multiplicand[2]), .Q(M[2]) );
  DLH_X1 \M_reg[1]  ( .G(reset), .D(multiplicand[1]), .Q(M[1]) );
  DLH_X1 \M_reg[0]  ( .G(reset), .D(multiplicand[0]), .Q(M[0]) );
  DFFR_X1 \count_reg[0]  ( .D(n80), .CK(clk), .RN(n45), .Q(count[0]) );
  DFFR_X2 \count_reg[1]  ( .D(n79), .CK(clk), .RN(n45), .Q(count[1]), .QN(n38)
         );
  DFFS_X2 \count_reg[2]  ( .D(n78), .CK(clk), .SN(n45), .Q(count[2]), .QN(n35)
         );
  DFFR_X1 done_reg ( .D(n77), .CK(clk), .RN(n45), .Q(done) );
  DFFR_X2 Q_1_reg ( .D(n76), .CK(clk), .RN(n45), .Q(Q_1), .QN(n44) );
  SDFFS_X1 \product_reg[3]  ( .D(n71), .SI(n95), .SE(n105), .CK(clk), .SN(n45), 
        .QN(product[3]) );
  SDFFRS_X1 \Q_reg[3]  ( .D(n19), .SI(Q[3]), .SE(n105), .CK(clk), .RN(n100), 
        .SN(n104), .Q(Q[3]), .QN(n95) );
  SDFFR_X2 \product_reg[2]  ( .D(Q[3]), .SI(Q[2]), .SE(n105), .CK(clk), .RN(
        n45), .Q(product[2]) );
  SDFFRS_X1 \Q_reg[2]  ( .D(Q[3]), .SI(Q[2]), .SE(n105), .CK(clk), .RN(n99), 
        .SN(n103), .Q(Q[2]) );
  SDFFR_X2 \product_reg[1]  ( .D(Q[2]), .SI(Q[1]), .SE(n105), .CK(clk), .RN(
        n45), .Q(product[1]) );
  SDFFRS_X1 \Q_reg[1]  ( .D(Q[2]), .SI(Q[1]), .SE(n105), .CK(clk), .RN(n98), 
        .SN(n102), .Q(Q[1]) );
  SDFFR_X2 \product_reg[0]  ( .D(Q[1]), .SI(Q[0]), .SE(n105), .CK(clk), .RN(
        n45), .Q(product[0]) );
  SDFFRS_X1 \Q_reg[0]  ( .D(Q[1]), .SI(Q[0]), .SE(n105), .CK(clk), .RN(n97), 
        .SN(n101), .Q(Q[0]), .QN(n94) );
  SDFFS_X1 \product_reg[5]  ( .D(n61), .SI(n29), .SE(n105), .CK(clk), .SN(n45), 
        .QN(product[5]) );
  DFFR_X2 \A_reg[1]  ( .D(n74), .CK(clk), .RN(n45), .Q(A[1]), .QN(n29) );
  SDFFS_X1 \product_reg[4]  ( .D(n67), .SI(n32), .SE(n105), .CK(clk), .SN(n45), 
        .QN(product[4]) );
  DFFR_X2 \A_reg[0]  ( .D(n75), .CK(clk), .RN(n45), .Q(A[0]), .QN(n32) );
  DFFR_X1 \product_reg[6]  ( .D(n73), .CK(clk), .RN(n45), .Q(product[6]), .QN(
        n1) );
  AOI222_X1 U41 ( .A1(M[2]), .A2(n59), .B1(M[2]), .B2(n1), .C1(n59), .C2(n1), 
        .ZN(n58) );
  AOI222_X1 U42 ( .A1(product[6]), .A2(M[2]), .B1(product[6]), .B2(n60), .C1(
        M[2]), .C2(n60), .ZN(n55) );
  AOI222_X1 U47 ( .A1(A[1]), .A2(n34), .B1(A[1]), .B2(n65), .C1(n34), .C2(n65), 
        .ZN(n59) );
  NOR2_X2 U60 ( .A1(Q[0]), .A2(n44), .ZN(n56) );
  INV_X4 U24 ( .A(n56), .ZN(n41) );
  NAND2_X2 U61 ( .A1(M[0]), .A2(n32), .ZN(n65) );
  NOR2_X2 U62 ( .A1(Q_1), .A2(n94), .ZN(n57) );
  INV_X4 U25 ( .A(n57), .ZN(n42) );
  OAI22_X2 U40 ( .A1(n55), .A2(n41), .B1(n58), .B2(n42), .ZN(n49) );
  AOI22_X2 U39 ( .A1(n55), .A2(n56), .B1(n57), .B2(n58), .ZN(n51) );
  AOI22_X2 U59 ( .A1(Q_1), .A2(n94), .B1(Q[0]), .B2(n44), .ZN(n54) );
  AOI21_X2 U37 ( .B1(M[3]), .B2(n49), .A(n54), .ZN(n53) );
  OAI22_X2 U36 ( .A1(n51), .A2(n52), .B1(n53), .B2(n1), .ZN(n50) );
  AOI211_X2 U35 ( .C1(n48), .C2(n49), .A(n50), .B(n105), .ZN(n47) );
  AOI21_X2 U34 ( .B1(n105), .B2(n1), .A(n47), .ZN(n73) );
  INV_X4 U17 ( .A(n65), .ZN(n31) );
  AOI21_X2 U58 ( .B1(M[0]), .B2(n40), .A(n32), .ZN(n72) );
  AOI221_X2 U57 ( .B1(n57), .B2(n31), .C1(n56), .C2(n31), .A(n72), .ZN(n71) );
  AOI22_X2 U56 ( .A1(M[1]), .A2(A[1]), .B1(n29), .B2(n34), .ZN(n70) );
  INV_X4 U14 ( .A(n70), .ZN(n27) );
  AOI221_X2 U55 ( .B1(n31), .B2(n70), .C1(n65), .C2(n27), .A(n42), .ZN(n68) );
  AOI221_X2 U53 ( .B1(n30), .B2(n70), .C1(n66), .C2(n27), .A(n41), .ZN(n69) );
  AOI211_X2 U52 ( .C1(A[1]), .C2(n54), .A(n68), .B(n69), .ZN(n67) );
  NOR2_X2 U67 ( .A1(count[0]), .A2(n105), .ZN(n80) );
  AOI21_X2 U65 ( .B1(n80), .B2(n38), .A(n35), .ZN(n78) );
  AOI22_X2 U63 ( .A1(n105), .A2(n44), .B1(n94), .B2(n96), .ZN(n76) );
  AOI222_X1 U50 ( .A1(n34), .A2(n29), .B1(n34), .B2(n66), .C1(n29), .C2(n66), 
        .ZN(n60) );
  XNOR2_X1 U38 ( .A(product[6]), .B(M[3]), .ZN(n52) );
  INV_X1 U19 ( .A(M[1]), .ZN(n34) );
  NOR2_X1 U43 ( .A1(product[6]), .A2(M[3]), .ZN(n48) );
  INV_X2 U23 ( .A(n54), .ZN(n40) );
  INV_X2 U16 ( .A(n66), .ZN(n30) );
  OR2_X2 U64 ( .A1(n105), .A2(done), .ZN(n77) );
  INV_X1 U20 ( .A(n80), .ZN(n36) );
  AOI22_X1 U66 ( .A1(count[1]), .A2(n80), .B1(n36), .B2(n38), .ZN(n79) );
  INV_X2 U11 ( .A(n71), .ZN(n19) );
  AOI22_X1 U44 ( .A1(n105), .A2(n29), .B1(n61), .B2(n96), .ZN(n74) );
  AOI22_X1 U51 ( .A1(n105), .A2(n32), .B1(n67), .B2(n96), .ZN(n75) );
  NAND2_X2 U71 ( .A1(A[0]), .A2(M[0]), .ZN(n66) );
  INV_X4 U72 ( .A(n96), .ZN(n105) );
  MUX2_X1 U73 ( .A(product[6]), .B(n1), .S(M[2]), .Z(n89) );
  NOR2_X1 U74 ( .A1(n60), .A2(n89), .ZN(n90) );
  AOI211_X1 U75 ( .C1(n60), .C2(n89), .A(n41), .B(n90), .ZN(n91) );
  NOR2_X1 U76 ( .A1(n59), .A2(n89), .ZN(n92) );
  AOI211_X1 U77 ( .C1(n59), .C2(n89), .A(n42), .B(n92), .ZN(n93) );
  AOI211_X1 U78 ( .C1(product[6]), .C2(n54), .A(n91), .B(n93), .ZN(n61) );
  INV_X4 U79 ( .A(reset), .ZN(n45) );
  NAND2_X2 U80 ( .A1(reset), .A2(multiplier[2]), .ZN(n103) );
  NAND2_X2 U81 ( .A1(reset), .A2(multiplier[0]), .ZN(n101) );
  NAND2_X2 U82 ( .A1(reset), .A2(multiplier[1]), .ZN(n102) );
  NAND2_X2 U83 ( .A1(reset), .A2(multiplier[3]), .ZN(n104) );
  OR3_X4 U84 ( .A1(count[1]), .A2(count[2]), .A3(count[0]), .ZN(n96) );
  OR2_X4 U85 ( .A1(multiplier[0]), .A2(n45), .ZN(n97) );
  OR2_X4 U86 ( .A1(multiplier[1]), .A2(n45), .ZN(n98) );
  OR2_X4 U87 ( .A1(multiplier[2]), .A2(n45), .ZN(n99) );
  OR2_X4 U88 ( .A1(multiplier[3]), .A2(n45), .ZN(n100) );
endmodule

