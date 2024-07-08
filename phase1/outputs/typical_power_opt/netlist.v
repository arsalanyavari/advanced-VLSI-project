
module booth_multiplier ( clk, reset, multiplicand, multiplier, product, done
 );
  input [3:0] multiplicand;
  input [3:0] multiplier;
  output [7:0] product;
  input clk, reset;
  output done;
  wire   \count[0] , N25, N26, N27, N28, N41, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44,
         n45, n46, n47, n49, n50, n51, n52, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n75, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108;
  wire   [3:0] Q;
  wire   [3:0] A;
  wire   [3:0] M;

  DLH_X1 \M_reg[3]  ( .G(reset), .D(multiplicand[3]), .Q(M[3]) );
  DLH_X1 \M_reg[2]  ( .G(reset), .D(multiplicand[2]), .Q(M[2]) );
  DLH_X1 \M_reg[1]  ( .G(reset), .D(multiplicand[1]), .Q(M[1]) );
  DLH_X1 \M_reg[0]  ( .G(reset), .D(multiplicand[0]), .Q(M[0]) );
  OAI22_X1 U3 ( .A1(n99), .A2(n8), .B1(N41), .B2(n9), .ZN(n75) );
  OAI22_X1 U4 ( .A1(n101), .A2(n8), .B1(N41), .B2(n10), .ZN(n77) );
  INV_X1 U5 ( .A(N27), .ZN(n10) );
  OAI22_X1 U6 ( .A1(n100), .A2(n8), .B1(N41), .B2(n9), .ZN(n78) );
  OAI221_X1 U7 ( .B1(n11), .B2(n12), .C1(n13), .C2(n8), .A(n14), .ZN(n79) );
  AOI21_X1 U8 ( .B1(n15), .B2(n8), .A(n16), .ZN(n14) );
  INV_X1 U9 ( .A(n17), .ZN(n16) );
  OAI21_X1 U10 ( .B1(n101), .B2(n18), .A(n19), .ZN(n15) );
  AOI22_X1 U11 ( .A1(n20), .A2(n11), .B1(n104), .B2(n21), .ZN(n18) );
  NAND2_X1 U12 ( .A1(multiplier[0]), .A2(reset), .ZN(n81) );
  OR2_X1 U13 ( .A1(n105), .A2(multiplier[0]), .ZN(n80) );
  OAI22_X1 U14 ( .A1(n82), .A2(n8), .B1(n86), .B2(N41), .ZN(n83) );
  NAND2_X1 U15 ( .A1(multiplier[1]), .A2(reset), .ZN(n85) );
  OR2_X1 U16 ( .A1(n105), .A2(multiplier[1]), .ZN(n84) );
  OAI22_X1 U17 ( .A1(n86), .A2(n8), .B1(n90), .B2(N41), .ZN(n87) );
  NAND2_X1 U18 ( .A1(multiplier[2]), .A2(reset), .ZN(n89) );
  OR2_X1 U19 ( .A1(n105), .A2(multiplier[2]), .ZN(n88) );
  OAI22_X1 U20 ( .A1(n90), .A2(n8), .B1(n94), .B2(N41), .ZN(n91) );
  NAND2_X1 U21 ( .A1(multiplier[3]), .A2(reset), .ZN(n93) );
  OR2_X1 U22 ( .A1(n105), .A2(multiplier[3]), .ZN(n92) );
  OAI22_X1 U23 ( .A1(n94), .A2(n8), .B1(N41), .B2(n22), .ZN(n95) );
  OAI22_X1 U24 ( .A1(n104), .A2(n8), .B1(n82), .B2(N41), .ZN(n96) );
  NAND2_X1 U25 ( .A1(n66), .A2(n8), .ZN(n97) );
  AOI21_X1 U27 ( .B1(n108), .B2(n103), .A(n102), .ZN(n106) );
  XNOR2_X1 U28 ( .A(n108), .B(n103), .ZN(n107) );
  NOR2_X1 U29 ( .A1(N41), .A2(\count[0] ), .ZN(n108) );
  INV_X1 U33 ( .A(n9), .ZN(N28) );
  AOI22_X1 U34 ( .A1(A[3]), .A2(n25), .B1(n26), .B2(n99), .ZN(n9) );
  INV_X1 U35 ( .A(n27), .ZN(n26) );
  AOI22_X1 U36 ( .A1(n28), .A2(n29), .B1(n30), .B2(n31), .ZN(n27) );
  OAI221_X1 U37 ( .B1(n31), .B2(n11), .C1(n29), .C2(n104), .A(n32), .ZN(n25)
         );
  XNOR2_X1 U38 ( .A(n33), .B(M[3]), .ZN(n29) );
  OAI21_X1 U39 ( .B1(M[2]), .B2(n34), .A(n35), .ZN(n33) );
  OAI21_X1 U40 ( .B1(n36), .B2(n37), .A(n100), .ZN(n35) );
  INV_X1 U41 ( .A(n34), .ZN(n36) );
  XNOR2_X1 U42 ( .A(n38), .B(M[3]), .ZN(n31) );
  OAI21_X1 U43 ( .B1(M[2]), .B2(n39), .A(n40), .ZN(n38) );
  OAI21_X1 U44 ( .B1(n41), .B2(n37), .A(A[2]), .ZN(n40) );
  INV_X1 U45 ( .A(n39), .ZN(n41) );
  OAI22_X1 U47 ( .A1(n100), .A2(n43), .B1(n44), .B2(A[2]), .ZN(N27) );
  AOI22_X1 U49 ( .A1(n45), .A2(n28), .B1(n46), .B2(n30), .ZN(n44) );
  INV_X1 U50 ( .A(n47), .ZN(n43) );
  OAI221_X1 U51 ( .B1(n46), .B2(n82), .C1(Q[0]), .C2(n45), .A(n32), .ZN(n47)
         );
  XOR2_X1 U52 ( .A(n34), .B(M[2]), .Z(n45) );
  OAI21_X1 U53 ( .B1(n49), .B2(n50), .A(n51), .ZN(n34) );
  INV_X1 U54 ( .A(n52), .ZN(n51) );
  AOI21_X1 U55 ( .B1(n49), .B2(n50), .A(n101), .ZN(n52) );
  XNOR2_X1 U56 ( .A(n37), .B(n39), .ZN(n46) );
  OAI22_X1 U57 ( .A1(n50), .A2(A[1]), .B1(n54), .B2(n55), .ZN(n39) );
  INV_X1 U58 ( .A(M[2]), .ZN(n37) );
  NAND4_X1 U59 ( .A1(n19), .A2(n56), .A3(n57), .A4(n17), .ZN(N26) );
  NAND4_X1 U60 ( .A1(n30), .A2(n101), .A3(M[1]), .A4(A[0]), .ZN(n17) );
  NAND3_X1 U61 ( .A1(n82), .A2(A[1]), .A3(n20), .ZN(n57) );
  INV_X1 U62 ( .A(n58), .ZN(n20) );
  NAND2_X1 U63 ( .A1(n59), .A2(Q[0]), .ZN(n56) );
  OAI21_X1 U64 ( .B1(n101), .B2(n60), .A(n12), .ZN(n59) );
  NAND2_X1 U65 ( .A1(n54), .A2(A[0]), .ZN(n12) );
  NOR2_X1 U66 ( .A1(n101), .A2(M[1]), .ZN(n54) );
  INV_X1 U67 ( .A(n21), .ZN(n60) );
  OAI22_X1 U68 ( .A1(M[1]), .A2(M[0]), .B1(n50), .B2(n55), .ZN(n21) );
  INV_X1 U69 ( .A(n61), .ZN(n19) );
  OAI22_X1 U70 ( .A1(n101), .A2(n32), .B1(n62), .B2(A[1]), .ZN(n61) );
  AOI22_X1 U72 ( .A1(n28), .A2(n58), .B1(n30), .B2(n63), .ZN(n62) );
  OAI22_X1 U73 ( .A1(M[0]), .A2(n50), .B1(M[1]), .B2(n55), .ZN(n63) );
  NOR2_X1 U74 ( .A1(n11), .A2(n82), .ZN(n30) );
  XOR2_X1 U76 ( .A(n49), .B(n50), .Z(n58) );
  INV_X1 U77 ( .A(M[1]), .ZN(n50) );
  NAND2_X1 U78 ( .A1(M[0]), .A2(A[0]), .ZN(n49) );
  NOR2_X1 U79 ( .A1(Q[0]), .A2(n104), .ZN(n28) );
  INV_X1 U81 ( .A(n22), .ZN(N25) );
  AOI21_X1 U82 ( .B1(n32), .B2(n64), .A(n65), .ZN(n22) );
  AOI21_X1 U83 ( .B1(n32), .B2(M[0]), .A(n13), .ZN(n65) );
  INV_X1 U84 ( .A(n55), .ZN(n64) );
  NAND2_X1 U85 ( .A1(M[0]), .A2(n13), .ZN(n55) );
  XOR2_X1 U87 ( .A(n104), .B(n82), .Z(n32) );
  DFFRS_X1 \Q_reg[3]  ( .D(n95), .CK(clk), .RN(n92), .SN(n93), .Q(Q[3]), .QN(
        n94) );
  DFFRS_X1 \Q_reg[2]  ( .D(n91), .CK(clk), .RN(n88), .SN(n89), .Q(Q[2]), .QN(
        n90) );
  DFFRS_X1 \Q_reg[1]  ( .D(n87), .CK(clk), .RN(n84), .SN(n85), .Q(Q[1]), .QN(
        n86) );
  DFFS_X1 \count_reg[2]  ( .D(n106), .CK(clk), .SN(n105), .QN(n102) );
  DFFRS_X1 \Q_reg[0]  ( .D(n83), .CK(clk), .RN(n80), .SN(n81), .Q(Q[0]), .QN(
        n82) );
  SDFFR_X1 \product_reg[5]  ( .D(N27), .SI(A[1]), .SE(N41), .CK(clk), .RN(n105), .Q(product[5]) );
  SDFFR_X1 \product_reg[7]  ( .D(N28), .SI(A[3]), .SE(N41), .CK(clk), .RN(n105), .Q(product[7]) );
  SDFFR_X1 \product_reg[6]  ( .D(N28), .SI(A[2]), .SE(N41), .CK(clk), .RN(n105), .Q(product[6]) );
  SDFFR_X1 \product_reg[4]  ( .D(N26), .SI(A[0]), .SE(N41), .CK(clk), .RN(n105), .Q(product[4]) );
  SDFFR_X1 \product_reg[0]  ( .D(Q[1]), .SI(Q[0]), .SE(N41), .CK(clk), .RN(
        n105), .Q(product[0]) );
  SDFFR_X1 \product_reg[1]  ( .D(Q[2]), .SI(Q[1]), .SE(N41), .CK(clk), .RN(
        n105), .Q(product[1]) );
  SDFFR_X1 \product_reg[3]  ( .D(N25), .SI(Q[3]), .SE(N41), .CK(clk), .RN(n105), .Q(product[3]) );
  DFFR_X1 Q_1_reg ( .D(n96), .CK(clk), .RN(n105), .Q(n11), .QN(n104) );
  DFFR_X1 \count_reg[1]  ( .D(n107), .CK(clk), .RN(n105), .QN(n103) );
  DFFR_X1 \count_reg[0]  ( .D(n108), .CK(clk), .RN(n105), .Q(\count[0] ), .QN(
        n23) );
  DFFR_X1 \A_reg[0]  ( .D(n79), .CK(clk), .RN(n105), .Q(A[0]), .QN(n13) );
  SDFFR_X1 \product_reg[2]  ( .D(Q[2]), .SI(Q[3]), .SE(n8), .CK(clk), .RN(n105), .Q(product[2]) );
  SDFFR_X1 done_reg ( .D(1'b0), .SI(1'b1), .SE(n97), .CK(clk), .RN(n105), .Q(
        done), .QN(n66) );
  SDFFR_X1 \A_reg[1]  ( .D(1'b0), .SI(1'b1), .SE(n77), .CK(clk), .RN(n105), 
        .Q(A[1]), .QN(n101) );
  SDFFR_X1 \A_reg[3]  ( .D(1'b0), .SI(1'b1), .SE(n75), .CK(clk), .RN(n105), 
        .Q(A[3]), .QN(n99) );
  SDFFR_X1 \A_reg[2]  ( .D(1'b0), .SI(1'b1), .SE(n78), .CK(clk), .RN(n105), 
        .Q(A[2]), .QN(n100) );
  INV_X2 U96 ( .A(n8), .ZN(N41) );
  NAND3_X1 U97 ( .A1(n103), .A2(n23), .A3(n102), .ZN(n8) );
  INV_X4 U98 ( .A(reset), .ZN(n105) );
endmodule

