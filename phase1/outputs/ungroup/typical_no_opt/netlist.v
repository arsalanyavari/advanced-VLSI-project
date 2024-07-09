
module booth_multiplier ( clk, reset, multiplicand, multiplier, product, done
 );
  input [3:0] multiplicand;
  input [3:0] multiplier;
  output [7:0] product;
  input clk, reset;
  output done;
  wire   Q_1, N25, N26, N27, N28, N41, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n22, n23, n24, n25, n26, n28, n29, n30, n31,
         n32, n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n65, n71, n72, n73, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105;
  wire   [3:0] Q;
  wire   [3:0] A;
  wire   [3:0] M;
  wire   [2:0] count;

  DLH_X1 \M_reg[3]  ( .G(reset), .D(multiplicand[3]), .Q(M[3]) );
  DLH_X1 \M_reg[2]  ( .G(reset), .D(multiplicand[2]), .Q(M[2]) );
  DLH_X1 \M_reg[1]  ( .G(reset), .D(multiplicand[1]), .Q(M[1]) );
  DLH_X1 \M_reg[0]  ( .G(reset), .D(multiplicand[0]), .Q(M[0]) );
  DFFR_X1 \count_reg[1]  ( .D(n104), .CK(clk), .RN(n102), .Q(count[1]), .QN(
        n101) );
  DFFS_X2 \count_reg[2]  ( .D(n103), .CK(clk), .SN(n102), .Q(count[2]), .QN(
        n100) );
  DFFR_X1 done_reg ( .D(n96), .CK(clk), .RN(n102), .Q(done), .QN(n65) );
  DFFRS_X2 \Q_reg[3]  ( .D(n93), .CK(clk), .RN(n90), .SN(n91), .Q(Q[3]), .QN(
        n92) );
  DFFRS_X2 \Q_reg[2]  ( .D(n89), .CK(clk), .RN(n86), .SN(n87), .Q(Q[2]), .QN(
        n88) );
  DFFRS_X2 \Q_reg[1]  ( .D(n85), .CK(clk), .RN(n82), .SN(n83), .Q(Q[1]), .QN(
        n84) );
  DFFRS_X2 \Q_reg[0]  ( .D(n81), .CK(clk), .RN(n78), .SN(n79), .Q(Q[0]), .QN(
        n80) );
  SDFFR_X2 \product_reg[0]  ( .D(Q[1]), .SI(Q[0]), .SE(N41), .CK(clk), .RN(
        n102), .Q(product[0]) );
  SDFFR_X2 \product_reg[1]  ( .D(Q[2]), .SI(Q[1]), .SE(N41), .CK(clk), .RN(
        n102), .Q(product[1]) );
  SDFFR_X2 \product_reg[2]  ( .D(Q[3]), .SI(Q[2]), .SE(N41), .CK(clk), .RN(
        n102), .Q(product[2]) );
  SDFFR_X2 \product_reg[3]  ( .D(N25), .SI(Q[3]), .SE(N41), .CK(clk), .RN(n102), .Q(product[3]) );
  DFFR_X1 \A_reg[1]  ( .D(n73), .CK(clk), .RN(n102), .Q(A[1]), .QN(n99) );
  DFFR_X1 \A_reg[2]  ( .D(n72), .CK(clk), .RN(n102), .Q(A[2]), .QN(n98) );
  DFFR_X1 \A_reg[3]  ( .D(n71), .CK(clk), .RN(n102), .Q(A[3]), .QN(n97) );
  SDFFR_X2 \product_reg[7]  ( .D(N28), .SI(A[3]), .SE(N41), .CK(clk), .RN(n102), .Q(product[7]) );
  SDFFR_X2 \product_reg[6]  ( .D(N28), .SI(A[2]), .SE(N41), .CK(clk), .RN(n102), .Q(product[6]) );
  SDFFR_X2 \product_reg[5]  ( .D(N27), .SI(A[1]), .SE(N41), .CK(clk), .RN(n102), .Q(product[5]) );
  SDFFR_X2 \product_reg[4]  ( .D(N26), .SI(A[0]), .SE(N41), .CK(clk), .RN(n102), .Q(product[4]) );
  OAI22_X1 U3 ( .A1(n97), .A2(n8), .B1(N41), .B2(n9), .ZN(n71) );
  OAI22_X1 U4 ( .A1(n98), .A2(n8), .B1(N41), .B2(n9), .ZN(n72) );
  INV_X1 U5 ( .A(N28), .ZN(n9) );
  OAI22_X1 U6 ( .A1(n99), .A2(n8), .B1(N41), .B2(n10), .ZN(n73) );
  NAND2_X1 U7 ( .A1(multiplier[0]), .A2(reset), .ZN(n79) );
  OR2_X1 U8 ( .A1(n102), .A2(multiplier[0]), .ZN(n78) );
  OAI22_X1 U9 ( .A1(n80), .A2(n8), .B1(n84), .B2(N41), .ZN(n81) );
  NAND2_X1 U10 ( .A1(multiplier[1]), .A2(reset), .ZN(n83) );
  OR2_X1 U11 ( .A1(n102), .A2(multiplier[1]), .ZN(n82) );
  OAI22_X1 U12 ( .A1(n84), .A2(n8), .B1(n88), .B2(N41), .ZN(n85) );
  NAND2_X1 U13 ( .A1(multiplier[2]), .A2(reset), .ZN(n87) );
  OR2_X1 U14 ( .A1(n102), .A2(multiplier[2]), .ZN(n86) );
  OAI22_X1 U15 ( .A1(n88), .A2(n8), .B1(n92), .B2(N41), .ZN(n89) );
  NAND2_X1 U16 ( .A1(multiplier[3]), .A2(reset), .ZN(n91) );
  OR2_X1 U17 ( .A1(n102), .A2(multiplier[3]), .ZN(n90) );
  OAI22_X1 U18 ( .A1(n92), .A2(n8), .B1(N41), .B2(n11), .ZN(n93) );
  INV_X1 U19 ( .A(N25), .ZN(n11) );
  OAI22_X1 U20 ( .A1(N41), .A2(n12), .B1(n13), .B2(n14), .ZN(n94) );
  AND3_X1 U21 ( .A1(n15), .A2(n8), .A3(n16), .ZN(n13) );
  OAI22_X1 U22 ( .A1(n17), .A2(n8), .B1(n80), .B2(N41), .ZN(n95) );
  NAND2_X1 U23 ( .A1(n65), .A2(n8), .ZN(n96) );
  AOI21_X1 U25 ( .B1(n105), .B2(n101), .A(n100), .ZN(n103) );
  XNOR2_X1 U26 ( .A(n105), .B(n101), .ZN(n104) );
  NOR2_X1 U27 ( .A1(N41), .A2(count[0]), .ZN(n105) );
  OAI22_X1 U31 ( .A1(n97), .A2(n19), .B1(n20), .B2(A[3]), .ZN(N28) );
  AOI22_X1 U33 ( .A1(n22), .A2(n23), .B1(n24), .B2(n25), .ZN(n20) );
  INV_X1 U34 ( .A(n26), .ZN(n19) );
  OAI221_X1 U35 ( .B1(n23), .B2(n80), .C1(n25), .C2(Q[0]), .A(n28), .ZN(n26)
         );
  XOR2_X1 U36 ( .A(M[3]), .B(n29), .Z(n25) );
  AOI22_X1 U37 ( .A1(n98), .A2(n30), .B1(n31), .B2(n32), .ZN(n29) );
  OR2_X1 U38 ( .A1(n32), .A2(n31), .ZN(n30) );
  XOR2_X1 U39 ( .A(M[3]), .B(n33), .Z(n23) );
  AOI22_X1 U40 ( .A1(n34), .A2(A[2]), .B1(n36), .B2(n32), .ZN(n33) );
  OR2_X1 U41 ( .A1(n32), .A2(n36), .ZN(n34) );
  INV_X1 U42 ( .A(M[2]), .ZN(n32) );
  INV_X1 U43 ( .A(n10), .ZN(N27) );
  AOI22_X1 U44 ( .A1(A[2]), .A2(n37), .B1(n38), .B2(n98), .ZN(n10) );
  INV_X1 U45 ( .A(n39), .ZN(n38) );
  AOI22_X1 U46 ( .A1(n40), .A2(n22), .B1(n41), .B2(n24), .ZN(n39) );
  OAI221_X1 U47 ( .B1(n40), .B2(n80), .C1(Q[0]), .C2(n41), .A(n28), .ZN(n37)
         );
  INV_X1 U48 ( .A(n42), .ZN(n28) );
  XNOR2_X1 U49 ( .A(n31), .B(M[2]), .ZN(n41) );
  NOR2_X1 U50 ( .A1(n43), .A2(n44), .ZN(n31) );
  NOR3_X1 U51 ( .A1(n45), .A2(n46), .A3(n14), .ZN(n44) );
  XNOR2_X1 U52 ( .A(n36), .B(M[2]), .ZN(n40) );
  AOI21_X1 U53 ( .B1(n47), .B2(n48), .A(n49), .ZN(n36) );
  OAI211_X1 U55 ( .C1(n15), .C2(n14), .A(n16), .B(n12), .ZN(N26) );
  AOI221_X1 U56 ( .B1(n50), .B2(n45), .C1(n42), .C2(A[1]), .A(n52), .ZN(n12)
         );
  OAI33_X1 U57 ( .A1(Q[0]), .A2(A[0]), .A3(n53), .B1(n54), .B2(n80), .B3(n55), 
        .ZN(n52) );
  AOI21_X1 U58 ( .B1(n46), .B2(n17), .A(n43), .ZN(n55) );
  AOI21_X1 U59 ( .B1(n49), .B2(Q_1), .A(n56), .ZN(n53) );
  INV_X1 U60 ( .A(n47), .ZN(n56) );
  NAND2_X1 U61 ( .A1(n57), .A2(n47), .ZN(n50) );
  NAND3_X1 U62 ( .A1(n24), .A2(n45), .A3(n49), .ZN(n16) );
  NOR2_X1 U63 ( .A1(Q[0]), .A2(n17), .ZN(n24) );
  INV_X1 U66 ( .A(n58), .ZN(n15) );
  OAI211_X1 U67 ( .C1(n80), .C2(n47), .A(n59), .B(n57), .ZN(n58) );
  NAND2_X1 U68 ( .A1(n49), .A2(n22), .ZN(n57) );
  NOR2_X1 U69 ( .A1(Q_1), .A2(n80), .ZN(n22) );
  NOR2_X1 U70 ( .A1(A[1]), .A2(n60), .ZN(n49) );
  OAI211_X1 U71 ( .C1(n61), .C2(n43), .A(M[0]), .B(n80), .ZN(n59) );
  NOR2_X1 U72 ( .A1(n60), .A2(n99), .ZN(n43) );
  AND2_X1 U73 ( .A1(Q_1), .A2(n46), .ZN(n61) );
  NOR2_X1 U74 ( .A1(A[1]), .A2(M[1]), .ZN(n46) );
  NAND2_X1 U75 ( .A1(A[1]), .A2(n60), .ZN(n47) );
  INV_X1 U76 ( .A(M[1]), .ZN(n60) );
  OAI21_X1 U78 ( .B1(n54), .B2(n42), .A(n62), .ZN(N25) );
  OAI21_X1 U79 ( .B1(n45), .B2(n42), .A(A[0]), .ZN(n62) );
  XNOR2_X1 U80 ( .A(Q_1), .B(Q[0]), .ZN(n42) );
  INV_X1 U82 ( .A(n48), .ZN(n54) );
  NOR2_X1 U83 ( .A1(n45), .A2(A[0]), .ZN(n48) );
  INV_X1 U84 ( .A(M[0]), .ZN(n45) );
  DFFR_X2 \count_reg[0]  ( .D(n105), .CK(clk), .RN(n102), .Q(count[0]), .QN(
        n18) );
  DFFR_X2 Q_1_reg ( .D(n95), .CK(clk), .RN(n102), .Q(Q_1), .QN(n17) );
  DFFR_X2 \A_reg[0]  ( .D(n94), .CK(clk), .RN(n102), .Q(A[0]), .QN(n14) );
  INV_X4 U85 ( .A(n8), .ZN(N41) );
  INV_X4 U86 ( .A(reset), .ZN(n102) );
  NAND3_X2 U87 ( .A1(n101), .A2(n18), .A3(n100), .ZN(n8) );
endmodule

