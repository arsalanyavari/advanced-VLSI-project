
module booth_multiplier ( clk, reset, multiplicand, multiplier, product, done
 );
  input [3:0] multiplicand;
  input [3:0] multiplier;
  output [7:0] product;
  input clk, reset;
  output done;
  wire   Q_1, N18, N19, N20, N21, N22, N23, N24, \sub_x_18_3/n4 , n6, n7, n10,
         n11, n14, n15, n18, n19, n20, n28, n29, n30, n34, n35, n37, n39, n40,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , \intadd_1/A[2] ,
         \intadd_1/A[1] , \intadd_1/A[0] , \intadd_1/n3 , \intadd_1/n2 ,
         \intadd_1/n1 , n71, n73, n80, n81, n82, n83, n84, n85;
  wire   [3:0] Q;
  wire   [3:0] A;
  wire   [3:0] M;
  wire   [2:0] count;
  assign product[7] = product[6];

  DLH_X1 \M_reg[3]  ( .G(reset), .D(multiplicand[3]), .Q(M[3]) );
  DLH_X1 \M_reg[2]  ( .G(reset), .D(multiplicand[2]), .Q(M[2]) );
  DLH_X1 \M_reg[1]  ( .G(reset), .D(multiplicand[1]), .Q(M[1]) );
  DLH_X1 \M_reg[0]  ( .G(reset), .D(multiplicand[0]), .Q(M[0]) );
  DFFR_X1 \count_reg[0]  ( .D(n62), .CK(clk), .RN(n85), .Q(count[0]) );
  DFFR_X1 done_reg ( .D(n60), .CK(clk), .RN(n85), .Q(done) );
  SDFFRS_X1 \Q_reg[3]  ( .D(n20), .SI(Q[3]), .SE(n83), .CK(clk), .RN(n18), 
        .SN(n19), .Q(Q[3]) );
  SDFFRS_X1 \Q_reg[2]  ( .D(Q[3]), .SI(Q[2]), .SE(n46), .CK(clk), .RN(n14), 
        .SN(n15), .Q(Q[2]) );
  SDFFRS_X1 \Q_reg[1]  ( .D(Q[2]), .SI(Q[1]), .SE(n83), .CK(clk), .RN(n10), 
        .SN(n11), .Q(Q[1]) );
  SDFFRS_X1 \Q_reg[0]  ( .D(Q[1]), .SI(Q[0]), .SE(n83), .CK(clk), .RN(n6), 
        .SN(n7), .Q(Q[0]) );
  DFFR_X1 \A_reg[0]  ( .D(n58), .CK(clk), .RN(n85), .Q(A[0]), .QN(n30) );
  DFFR_X2 \A_reg[1]  ( .D(n57), .CK(clk), .RN(n84), .Q(A[1]), .QN(n29) );
  DFFR_X1 \product_reg[6]  ( .D(n56), .CK(clk), .RN(n85), .Q(product[6]) );
  FA_X1 \intadd_0/U4  ( .A(A[1]), .B(M[1]), .CI(n80), .CO(\intadd_0/n3 ), .S(
        N18) );
  FA_X1 \intadd_0/U3  ( .A(product[6]), .B(M[2]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(N19) );
  FA_X1 \intadd_1/U4  ( .A(\intadd_1/A[0] ), .B(A[1]), .CI(\sub_x_18_3/n4 ), 
        .CO(\intadd_1/n3 ), .S(N22) );
  FA_X1 \intadd_1/U3  ( .A(product[6]), .B(\intadd_1/A[1] ), .CI(\intadd_1/n3 ), .CO(\intadd_1/n2 ), .S(N23) );
  SDFFR_X1 \product_reg[2]  ( .D(Q[3]), .SI(Q[2]), .SE(n46), .CK(clk), .RN(n85), .Q(product[2]) );
  SDFFR_X1 \product_reg[1]  ( .D(Q[2]), .SI(Q[1]), .SE(n83), .CK(clk), .RN(n84), .Q(product[1]) );
  SDFFR_X1 \product_reg[0]  ( .D(Q[1]), .SI(Q[0]), .SE(n46), .CK(clk), .RN(n85), .Q(product[0]) );
  DFFR_X1 Q_1_reg ( .D(n59), .CK(clk), .RN(n84), .Q(Q_1), .QN(n40) );
  DFFR_X1 \count_reg[1]  ( .D(n61), .CK(clk), .RN(n84), .Q(count[1]), .QN(n37)
         );
  DFFR_X1 \count_reg[2]  ( .D(n55), .CK(clk), .RN(n84), .QN(count[2]) );
  NOR3_X2 U48 ( .A1(count[1]), .A2(count[2]), .A3(count[0]), .ZN(n46) );
  AOI222_X1 U36 ( .A1(n49), .A2(product[6]), .B1(n51), .B2(N19), .C1(n50), 
        .C2(N23), .ZN(n52) );
  AOI222_X1 U39 ( .A1(n49), .A2(A[0]), .B1(n51), .B2(n81), .C1(n50), .C2(N21), 
        .ZN(n54) );
  AOI222_X1 U38 ( .A1(n49), .A2(A[1]), .B1(n51), .B2(N18), .C1(n50), .C2(N22), 
        .ZN(n53) );
  SDFFR_X1 \product_reg[3]  ( .D(n20), .SI(Q[3]), .SE(n46), .CK(clk), .RN(n84), 
        .Q(product[3]) );
  SDFFR_X1 \product_reg[4]  ( .D(n73), .SI(A[0]), .SE(n46), .CK(clk), .RN(n84), 
        .Q(product[4]) );
  SDFFR_X1 \product_reg[5]  ( .D(n71), .SI(A[1]), .SE(n46), .CK(clk), .RN(n84), 
        .Q(product[5]) );
  AND2_X2 U57 ( .A1(M[0]), .A2(A[0]), .ZN(n80) );
  INV_X1 U58 ( .A(M[1]), .ZN(\intadd_1/A[0] ) );
  INV_X1 U59 ( .A(n28), .ZN(\sub_x_18_3/n4 ) );
  NOR2_X1 U60 ( .A1(n34), .A2(A[0]), .ZN(n28) );
  INV_X1 U61 ( .A(n62), .ZN(n35) );
  INV_X1 U62 ( .A(Q[0]), .ZN(n39) );
  INV_X1 U63 ( .A(M[2]), .ZN(\intadd_1/A[1] ) );
  XOR2_X1 U64 ( .A(\intadd_1/A[2] ), .B(product[6]), .Z(\intadd_1/n1 ) );
  INV_X1 U65 ( .A(M[3]), .ZN(\intadd_1/A[2] ) );
  XOR2_X1 U66 ( .A(\intadd_0/n2 ), .B(\intadd_0/n1 ), .Z(N20) );
  XOR2_X1 U67 ( .A(M[3]), .B(product[6]), .Z(\intadd_0/n1 ) );
  INV_X1 U68 ( .A(n46), .ZN(n82) );
  INV_X1 U69 ( .A(M[0]), .ZN(n34) );
  NOR2_X1 U70 ( .A1(Q_1), .A2(n39), .ZN(n50) );
  AOI22_X1 U71 ( .A1(Q_1), .A2(n39), .B1(Q[0]), .B2(n40), .ZN(n49) );
  NOR2_X1 U72 ( .A1(Q[0]), .A2(n40), .ZN(n51) );
  INV_X1 U73 ( .A(n52), .ZN(n71) );
  INV_X1 U74 ( .A(n53), .ZN(n73) );
  OAI21_X1 U75 ( .B1(n35), .B2(count[1]), .A(count[2]), .ZN(n55) );
  AOI22_X1 U76 ( .A1(count[1]), .A2(n62), .B1(n35), .B2(n37), .ZN(n61) );
  AOI22_X1 U77 ( .A1(n83), .A2(n40), .B1(n39), .B2(n82), .ZN(n59) );
  OAI21_X1 U78 ( .B1(n83), .B2(n47), .A(n48), .ZN(n56) );
  OAI21_X1 U79 ( .B1(n46), .B2(n49), .A(product[6]), .ZN(n48) );
  AOI22_X1 U80 ( .A1(n50), .A2(N24), .B1(n51), .B2(N20), .ZN(n47) );
  XOR2_X1 U81 ( .A(\intadd_1/n2 ), .B(\intadd_1/n1 ), .Z(N24) );
  AOI22_X1 U82 ( .A1(n83), .A2(n29), .B1(n52), .B2(n82), .ZN(n57) );
  AOI22_X1 U83 ( .A1(n46), .A2(n30), .B1(n53), .B2(n82), .ZN(n58) );
  INV_X1 U84 ( .A(n64), .ZN(n7) );
  NOR2_X1 U85 ( .A1(n85), .A2(n45), .ZN(n64) );
  INV_X1 U86 ( .A(multiplier[0]), .ZN(n45) );
  INV_X1 U87 ( .A(n63), .ZN(n6) );
  NOR2_X1 U88 ( .A1(multiplier[0]), .A2(n85), .ZN(n63) );
  INV_X1 U89 ( .A(n66), .ZN(n11) );
  NOR2_X1 U90 ( .A1(n85), .A2(n44), .ZN(n66) );
  INV_X1 U91 ( .A(multiplier[1]), .ZN(n44) );
  INV_X1 U92 ( .A(n65), .ZN(n10) );
  NOR2_X1 U93 ( .A1(multiplier[1]), .A2(n85), .ZN(n65) );
  INV_X1 U94 ( .A(n68), .ZN(n15) );
  NOR2_X1 U95 ( .A1(n84), .A2(n43), .ZN(n68) );
  INV_X1 U96 ( .A(multiplier[2]), .ZN(n43) );
  INV_X1 U97 ( .A(n67), .ZN(n14) );
  NOR2_X1 U98 ( .A1(multiplier[2]), .A2(n84), .ZN(n67) );
  INV_X1 U99 ( .A(n70), .ZN(n19) );
  NOR2_X1 U100 ( .A1(n85), .A2(n42), .ZN(n70) );
  INV_X1 U101 ( .A(multiplier[3]), .ZN(n42) );
  INV_X1 U102 ( .A(n69), .ZN(n18) );
  NOR2_X1 U103 ( .A1(multiplier[3]), .A2(n85), .ZN(n69) );
  INV_X1 U104 ( .A(n82), .ZN(n83) );
  INV_X1 U105 ( .A(n54), .ZN(n20) );
  XOR2_X1 U106 ( .A(M[0]), .B(A[0]), .Z(n81) );
  XNOR2_X1 U107 ( .A(A[0]), .B(n34), .ZN(N21) );
  OR2_X2 U108 ( .A1(n46), .A2(done), .ZN(n60) );
  NOR2_X1 U109 ( .A1(count[0]), .A2(n46), .ZN(n62) );
  INV_X2 U110 ( .A(reset), .ZN(n84) );
  INV_X2 U111 ( .A(reset), .ZN(n85) );
endmodule

