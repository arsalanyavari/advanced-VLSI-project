
module booth_multiplier ( clk, reset, multiplicand, multiplier, product, done
 );
  input [3:0] multiplicand;
  input [3:0] multiplier;
  output [7:0] product;
  input clk, reset;
  output done;
  wire   N25, N26, N27, N28, N41, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46,
         n47, n49, n50, n51, n52, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n74, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n122;
  wire   [3:0] Q;
  wire   [3:0] A;
  wire   [3:0] M;
  wire   [2:0] count;

  DLH_X2 \M_reg[3]  ( .G(reset), .D(multiplicand[3]), .Q(M[3]) );
  DLH_X2 \M_reg[2]  ( .G(reset), .D(multiplicand[2]), .Q(M[2]) );
  DLH_X2 \M_reg[1]  ( .G(reset), .D(multiplicand[1]), .Q(M[1]) );
  DLH_X2 \M_reg[0]  ( .G(reset), .D(multiplicand[0]), .Q(M[0]) );
  DFFS_X2 \count_reg[2]  ( .D(n105), .CK(clk), .SN(n122), .Q(count[2]), .QN(
        n101) );
  DFFRS_X2 \Q_reg[3]  ( .D(n94), .CK(clk), .RN(n91), .SN(n92), .Q(Q[3]), .QN(
        n93) );
  DFFRS_X2 \Q_reg[2]  ( .D(n90), .CK(clk), .RN(n87), .SN(n88), .Q(Q[2]), .QN(
        n89) );
  DFFRS_X2 \Q_reg[1]  ( .D(n86), .CK(clk), .RN(n83), .SN(n84), .Q(Q[1]), .QN(
        n85) );
  DFFRS_X2 \Q_reg[0]  ( .D(n82), .CK(clk), .RN(n79), .SN(n80), .Q(Q[0]), .QN(
        n81) );
  SDFFR_X2 \product_reg[5]  ( .D(N27), .SI(A[1]), .SE(N41), .CK(clk), .RN(n122), .Q(product[5]) );
  SDFFR_X2 \product_reg[6]  ( .D(N28), .SI(A[2]), .SE(N41), .CK(clk), .RN(n122), .Q(product[6]) );
  SDFFR_X2 \product_reg[7]  ( .D(N28), .SI(A[3]), .SE(N41), .CK(clk), .RN(n122), .Q(product[7]) );
  SDFFR_X2 \product_reg[4]  ( .D(N26), .SI(A[0]), .SE(N41), .CK(clk), .RN(n122), .Q(product[4]) );
  SDFFR_X2 \product_reg[0]  ( .D(Q[1]), .SI(Q[0]), .SE(N41), .CK(clk), .RN(
        n122), .Q(product[0]) );
  SDFFR_X2 \product_reg[1]  ( .D(Q[2]), .SI(Q[1]), .SE(N41), .CK(clk), .RN(
        n122), .Q(product[1]) );
  SDFFR_X2 \product_reg[3]  ( .D(N25), .SI(Q[3]), .SE(N41), .CK(clk), .RN(n122), .Q(product[3]) );
  OAI22_X1 U3 ( .A1(n98), .A2(n8), .B1(N41), .B2(n9), .ZN(n74) );
  OAI22_X1 U4 ( .A1(n100), .A2(n8), .B1(N41), .B2(n10), .ZN(n76) );
  INV_X1 U5 ( .A(N27), .ZN(n10) );
  OAI22_X1 U6 ( .A1(n99), .A2(n8), .B1(N41), .B2(n9), .ZN(n77) );
  OAI221_X1 U7 ( .B1(n11), .B2(n12), .C1(n13), .C2(n8), .A(n14), .ZN(n78) );
  AOI21_X1 U8 ( .B1(n15), .B2(n8), .A(n16), .ZN(n14) );
  OAI21_X1 U9 ( .B1(n100), .B2(n17), .A(n18), .ZN(n15) );
  AOI22_X1 U10 ( .A1(n19), .A2(n11), .B1(n103), .B2(n20), .ZN(n17) );
  INV_X1 U11 ( .A(n21), .ZN(n19) );
  NAND2_X1 U12 ( .A1(multiplier[0]), .A2(reset), .ZN(n80) );
  OR2_X4 U13 ( .A1(n122), .A2(multiplier[0]), .ZN(n79) );
  OAI22_X1 U14 ( .A1(n81), .A2(n8), .B1(n85), .B2(N41), .ZN(n82) );
  NAND2_X1 U15 ( .A1(multiplier[1]), .A2(reset), .ZN(n84) );
  OR2_X4 U16 ( .A1(n122), .A2(multiplier[1]), .ZN(n83) );
  OAI22_X1 U17 ( .A1(n85), .A2(n8), .B1(n89), .B2(N41), .ZN(n86) );
  NAND2_X1 U18 ( .A1(multiplier[2]), .A2(reset), .ZN(n88) );
  OR2_X4 U19 ( .A1(n122), .A2(multiplier[2]), .ZN(n87) );
  OAI22_X1 U20 ( .A1(n89), .A2(n8), .B1(n93), .B2(N41), .ZN(n90) );
  NAND2_X1 U21 ( .A1(multiplier[3]), .A2(reset), .ZN(n92) );
  OR2_X4 U22 ( .A1(n122), .A2(multiplier[3]), .ZN(n91) );
  OAI22_X1 U23 ( .A1(n93), .A2(n8), .B1(N41), .B2(n22), .ZN(n94) );
  OAI22_X1 U24 ( .A1(n103), .A2(n8), .B1(n81), .B2(N41), .ZN(n95) );
  NAND2_X1 U25 ( .A1(n65), .A2(n8), .ZN(n96) );
  AOI21_X1 U28 ( .B1(n107), .B2(n102), .A(n101), .ZN(n105) );
  XNOR2_X2 U29 ( .A(n107), .B(n102), .ZN(n106) );
  NOR2_X1 U30 ( .A1(N41), .A2(count[0]), .ZN(n107) );
  AND3_X4 U31 ( .A1(n23), .A2(n102), .A3(n101), .ZN(N41) );
  INV_X1 U33 ( .A(n9), .ZN(N28) );
  AOI22_X1 U34 ( .A1(A[3]), .A2(n25), .B1(n26), .B2(n98), .ZN(n9) );
  INV_X1 U35 ( .A(n27), .ZN(n26) );
  AOI22_X1 U36 ( .A1(n28), .A2(n29), .B1(n30), .B2(n31), .ZN(n27) );
  OAI221_X1 U37 ( .B1(n31), .B2(n11), .C1(n29), .C2(n103), .A(n32), .ZN(n25)
         );
  XNOR2_X2 U38 ( .A(n33), .B(M[3]), .ZN(n29) );
  OAI21_X1 U39 ( .B1(M[2]), .B2(n34), .A(n35), .ZN(n33) );
  OAI21_X1 U40 ( .B1(n36), .B2(n37), .A(n99), .ZN(n35) );
  INV_X1 U41 ( .A(n34), .ZN(n36) );
  XNOR2_X2 U42 ( .A(n38), .B(M[3]), .ZN(n31) );
  OAI21_X1 U43 ( .B1(M[2]), .B2(n39), .A(n40), .ZN(n38) );
  OAI21_X1 U44 ( .B1(n41), .B2(n37), .A(A[2]), .ZN(n40) );
  INV_X1 U45 ( .A(n39), .ZN(n41) );
  OAI22_X1 U47 ( .A1(n99), .A2(n43), .B1(n44), .B2(A[2]), .ZN(N27) );
  AOI22_X1 U49 ( .A1(n45), .A2(n28), .B1(n46), .B2(n30), .ZN(n44) );
  INV_X1 U50 ( .A(n47), .ZN(n43) );
  OAI221_X1 U51 ( .B1(n46), .B2(n81), .C1(Q[0]), .C2(n45), .A(n32), .ZN(n47)
         );
  XOR2_X2 U52 ( .A(n34), .B(M[2]), .Z(n45) );
  OAI21_X1 U53 ( .B1(n49), .B2(n50), .A(n51), .ZN(n34) );
  INV_X1 U54 ( .A(n52), .ZN(n51) );
  AOI21_X1 U55 ( .B1(n49), .B2(n50), .A(n100), .ZN(n52) );
  XNOR2_X2 U56 ( .A(n37), .B(n39), .ZN(n46) );
  OAI22_X1 U57 ( .A1(n50), .A2(A[1]), .B1(n54), .B2(n55), .ZN(n39) );
  INV_X1 U58 ( .A(M[2]), .ZN(n37) );
  OAI211_X1 U59 ( .C1(n81), .C2(n56), .A(n18), .B(n57), .ZN(N26) );
  NOR2_X1 U60 ( .A1(n16), .A2(n58), .ZN(n57) );
  NOR3_X1 U61 ( .A1(n21), .A2(n100), .A3(Q[0]), .ZN(n58) );
  AND4_X4 U62 ( .A1(n30), .A2(n100), .A3(M[1]), .A4(A[0]), .ZN(n16) );
  INV_X1 U63 ( .A(n59), .ZN(n18) );
  OAI22_X1 U64 ( .A1(n100), .A2(n32), .B1(n60), .B2(A[1]), .ZN(n59) );
  AOI22_X1 U65 ( .A1(n28), .A2(n21), .B1(n30), .B2(n61), .ZN(n60) );
  OAI22_X1 U66 ( .A1(M[0]), .A2(n50), .B1(M[1]), .B2(n55), .ZN(n61) );
  NOR2_X1 U67 ( .A1(n11), .A2(n81), .ZN(n30) );
  XOR2_X2 U69 ( .A(n49), .B(n50), .Z(n21) );
  NAND2_X1 U70 ( .A1(M[0]), .A2(A[0]), .ZN(n49) );
  NOR2_X1 U71 ( .A1(Q[0]), .A2(n103), .ZN(n28) );
  AOI21_X1 U73 ( .B1(n20), .B2(A[1]), .A(n62), .ZN(n56) );
  INV_X1 U74 ( .A(n12), .ZN(n62) );
  NAND2_X1 U75 ( .A1(n54), .A2(A[0]), .ZN(n12) );
  NOR2_X1 U76 ( .A1(n100), .A2(M[1]), .ZN(n54) );
  OAI22_X1 U78 ( .A1(M[1]), .A2(M[0]), .B1(n50), .B2(n55), .ZN(n20) );
  INV_X1 U79 ( .A(M[1]), .ZN(n50) );
  INV_X1 U80 ( .A(n22), .ZN(N25) );
  AOI21_X1 U81 ( .B1(n32), .B2(n63), .A(n64), .ZN(n22) );
  AOI21_X1 U82 ( .B1(n32), .B2(M[0]), .A(n13), .ZN(n64) );
  INV_X1 U83 ( .A(n55), .ZN(n63) );
  NAND2_X1 U84 ( .A1(M[0]), .A2(n13), .ZN(n55) );
  XOR2_X2 U86 ( .A(n103), .B(n81), .Z(n32) );
  SDFFR_X2 \count_reg[1]  ( .D(1'b0), .SI(1'b1), .SE(n106), .CK(clk), .RN(n104), .QN(n102) );
  SDFFR_X2 Q_1_reg ( .D(1'b0), .SI(1'b1), .SE(n95), .CK(clk), .RN(n104), .Q(
        n11), .QN(n103) );
  DFFR_X2 \count_reg[0]  ( .D(n107), .CK(clk), .RN(n104), .Q(count[0]), .QN(
        n23) );
  DFFR_X2 \A_reg[0]  ( .D(n78), .CK(clk), .RN(n104), .Q(A[0]), .QN(n13) );
  SDFFR_X2 done_reg ( .D(1'b0), .SI(1'b1), .SE(n96), .CK(clk), .RN(n104), .Q(
        done), .QN(n65) );
  SDFFR_X2 \A_reg[1]  ( .D(1'b0), .SI(1'b1), .SE(n76), .CK(clk), .RN(n104), 
        .Q(A[1]), .QN(n100) );
  SDFFR_X2 \A_reg[3]  ( .D(1'b0), .SI(1'b1), .SE(n74), .CK(clk), .RN(n104), 
        .Q(A[3]), .QN(n98) );
  SDFFR_X2 \A_reg[2]  ( .D(1'b0), .SI(1'b1), .SE(n77), .CK(clk), .RN(n104), 
        .Q(A[2]), .QN(n99) );
  SDFFR_X2 \product_reg[2]  ( .D(Q[2]), .SI(Q[3]), .SE(n8), .CK(clk), .RN(n122), .Q(product[2]) );
  INV_X2 U87 ( .A(reset), .ZN(n104) );
  INV_X1 U100 ( .A(N41), .ZN(n8) );
  BUF_X4 U101 ( .A(n104), .Z(n122) );
endmodule

