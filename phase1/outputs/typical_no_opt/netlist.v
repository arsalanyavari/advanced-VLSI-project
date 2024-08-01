
module booth_multiplier ( clk, reset, multiplicand, multiplier, product, done
 );
  input [3:0] multiplicand;
  input [3:0] multiplier;
  output [7:0] product;
  input clk, reset;
  output done;
  wire   Q_1, \count[1] , N6, N9, N10, N12, N13, N14, N15, N16, N17, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N43, \sub_41/carry[1] ,
         \sub_41/carry[2] , \sub_31/B_not[3] , \sub_31/B_not[2] ,
         \sub_31/B_not[1] , \sub_31/B_not[0] , \sub_31/carry[3] ,
         \sub_31/carry[2] , \sub_31/carry[1] , \add_30/carry[3] ,
         \add_30/carry[2] , \add_30/carry[1] , \gt_27/SB , \gt_27/LTV2[2] ,
         \gt_27/LTV2[1] , \gt_27/LTV1[1] , \gt_27/LTV1[0] , \gt_27/AEQB[2] ,
         \gt_27/AEQB[1] , \gt_27/LTV[2] , \gt_27/LTV[1] , n9, n19, n20, n22,
         n23, n25, n26, n28, n29, n35, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n96, n97, n98, n99;
  wire   [3:0] Q;
  wire   [3:0] A;
  wire   [3:0] M;

  XNOR2_X2 \sub_41/U1_A_1  ( .A(\count[1] ), .B(\sub_41/carry[1] ), .ZN(N30)
         );
  OR2_X2 \sub_41/U1_B_1  ( .A1(\count[1] ), .A2(\sub_41/carry[1] ), .ZN(
        \sub_41/carry[2] ) );
  XNOR2_X2 \sub_41/U1_A_2  ( .A(\gt_27/SB ), .B(\sub_41/carry[2] ), .ZN(N31)
         );
  INV_X4 \sub_31/U1_0  ( .A(M[0]), .ZN(\sub_31/B_not[0] ) );
  INV_X4 \sub_31/U1_1  ( .A(M[1]), .ZN(\sub_31/B_not[1] ) );
  FA_X1 \sub_31/U2_1  ( .A(A[1]), .B(\sub_31/B_not[1] ), .CI(\sub_31/carry[1] ), .CO(\sub_31/carry[2] ), .S(N22) );
  INV_X4 \sub_31/U1_2  ( .A(M[2]), .ZN(\sub_31/B_not[2] ) );
  FA_X1 \sub_31/U2_2  ( .A(A[2]), .B(\sub_31/B_not[2] ), .CI(\sub_31/carry[2] ), .CO(\sub_31/carry[3] ), .S(N23) );
  INV_X4 \sub_31/U1_3  ( .A(M[3]), .ZN(\sub_31/B_not[3] ) );
  FA_X1 \sub_31/U2_3  ( .A(A[3]), .B(\sub_31/B_not[3] ), .CI(\sub_31/carry[3] ), .S(N24) );
  FA_X1 \add_30/U1_1  ( .A(A[1]), .B(M[1]), .CI(\add_30/carry[1] ), .CO(
        \add_30/carry[2] ), .S(N18) );
  FA_X1 \add_30/U1_2  ( .A(A[2]), .B(M[2]), .CI(\add_30/carry[2] ), .CO(
        \add_30/carry[3] ), .S(N19) );
  FA_X1 \add_30/U1_3  ( .A(A[3]), .B(M[3]), .CI(\add_30/carry[3] ), .S(N20) );
  NAND2_X2 \gt_27/ULTI1_1  ( .A1(\gt_27/AEQB[1] ), .A2(\gt_27/LTV[1] ), .ZN(
        \gt_27/LTV2[1] ) );
  NAND2_X2 \gt_27/ULTI2_1  ( .A1(\gt_27/LTV1[1] ), .A2(\gt_27/LTV2[1] ), .ZN(
        \gt_27/LTV[2] ) );
  NAND2_X2 \gt_27/ULTI1  ( .A1(\gt_27/AEQB[2] ), .A2(\gt_27/LTV[2] ), .ZN(
        \gt_27/LTV2[2] ) );
  OR2_X2 C197 ( .A1(N14), .A2(N15), .ZN(N16) );
  INV_X4 I_5 ( .A(N12), .ZN(N13) );
  INV_X4 I_3 ( .A(N9), .ZN(N10) );
  OR2_X2 C146 ( .A1(N6), .A2(N41), .ZN(N39) );
  OR2_X2 C135 ( .A1(\count[1] ), .A2(\gt_27/SB ), .ZN(N43) );
  DLH_X1 \M_reg[3]  ( .G(reset), .D(multiplicand[3]), .Q(M[3]) );
  DLH_X1 \M_reg[2]  ( .G(reset), .D(multiplicand[2]), .Q(M[2]) );
  DLH_X1 \M_reg[1]  ( .G(reset), .D(multiplicand[1]), .Q(M[1]) );
  DLH_X1 \M_reg[0]  ( .G(reset), .D(multiplicand[0]), .Q(M[0]) );
  DFFR_X1 done_reg ( .D(n35), .CK(clk), .RN(n39), .Q(done), .QN(n9) );
  DFFR_X1 Q_1_reg ( .D(n79), .CK(clk), .RN(n39), .Q(Q_1), .QN(n54) );
  DFFRS_X2 \Q_reg[3]  ( .D(n76), .CK(clk), .RN(n28), .SN(n29), .Q(Q[3]) );
  DFFRS_X2 \Q_reg[2]  ( .D(n73), .CK(clk), .RN(n25), .SN(n26), .Q(Q[2]) );
  DFFRS_X2 \Q_reg[1]  ( .D(n70), .CK(clk), .RN(n22), .SN(n23), .Q(Q[1]) );
  DFFRS_X2 \Q_reg[0]  ( .D(n67), .CK(clk), .RN(n19), .SN(n20), .Q(Q[0]) );
  NAND2_X1 U3 ( .A1(n9), .A2(n45), .ZN(n35) );
  INV_X1 U4 ( .A(N6), .ZN(n48) );
  INV_X1 U5 ( .A(N41), .ZN(n45) );
  NOR3_X1 U6 ( .A1(\sub_41/carry[1] ), .A2(N43), .A3(N6), .ZN(N41) );
  NAND2_X1 U7 ( .A1(\gt_27/LTV2[2] ), .A2(\gt_27/AEQB[2] ), .ZN(N6) );
  INV_X4 U9 ( .A(n68), .ZN(n19) );
  INV_X4 U10 ( .A(n69), .ZN(n20) );
  INV_X4 U11 ( .A(n71), .ZN(n22) );
  INV_X4 U12 ( .A(n72), .ZN(n23) );
  INV_X4 U13 ( .A(n74), .ZN(n25) );
  INV_X4 U14 ( .A(n75), .ZN(n26) );
  INV_X4 U15 ( .A(n77), .ZN(n28) );
  INV_X4 U16 ( .A(n78), .ZN(n29) );
  AND2_X1 U18 ( .A1(multiplier[0]), .A2(reset), .ZN(n69) );
  NOR2_X1 U19 ( .A1(multiplier[0]), .A2(n39), .ZN(n68) );
  AND2_X1 U20 ( .A1(reset), .A2(multiplier[1]), .ZN(n72) );
  NOR2_X1 U21 ( .A1(multiplier[1]), .A2(n39), .ZN(n71) );
  AND2_X1 U22 ( .A1(reset), .A2(multiplier[2]), .ZN(n75) );
  NOR2_X1 U23 ( .A1(multiplier[2]), .A2(n39), .ZN(n74) );
  AND2_X1 U24 ( .A1(reset), .A2(multiplier[3]), .ZN(n78) );
  NOR2_X1 U25 ( .A1(multiplier[3]), .A2(n39), .ZN(n77) );
  INV_X1 U26 ( .A(reset), .ZN(n39) );
  NAND2_X1 U27 ( .A1(Q_1), .A2(n40), .ZN(N9) );
  INV_X1 U28 ( .A(n41), .ZN(N40) );
  AOI22_X1 U29 ( .A1(A[3]), .A2(N41), .B1(N28), .B2(N6), .ZN(n41) );
  INV_X1 U30 ( .A(n42), .ZN(N38) );
  AOI22_X1 U31 ( .A1(N41), .A2(A[2]), .B1(N28), .B2(N6), .ZN(n42) );
  INV_X1 U32 ( .A(n43), .ZN(N37) );
  AOI22_X1 U33 ( .A1(N41), .A2(A[1]), .B1(N27), .B2(N6), .ZN(n43) );
  INV_X1 U34 ( .A(n44), .ZN(N36) );
  AOI22_X1 U35 ( .A1(N41), .A2(A[0]), .B1(N26), .B2(N6), .ZN(n44) );
  OAI22_X1 U36 ( .A1(n45), .A2(n46), .B1(n47), .B2(n48), .ZN(N35) );
  OAI22_X1 U37 ( .A1(n48), .A2(n46), .B1(n45), .B2(n49), .ZN(N34) );
  INV_X1 U38 ( .A(Q[3]), .ZN(n46) );
  OAI22_X1 U39 ( .A1(n48), .A2(n49), .B1(n45), .B2(n50), .ZN(N33) );
  INV_X1 U40 ( .A(Q[2]), .ZN(n49) );
  OAI22_X1 U41 ( .A1(n48), .A2(n50), .B1(n45), .B2(n40), .ZN(N32) );
  INV_X1 U42 ( .A(Q[1]), .ZN(n50) );
  INV_X1 U43 ( .A(n51), .ZN(N28) );
  AOI222_X1 U44 ( .A1(N24), .A2(N13), .B1(N16), .B2(A[3]), .C1(N20), .C2(N10), 
        .ZN(n51) );
  INV_X1 U45 ( .A(n52), .ZN(N27) );
  AOI222_X1 U46 ( .A1(N23), .A2(N13), .B1(A[2]), .B2(N16), .C1(N19), .C2(N10), 
        .ZN(n52) );
  INV_X1 U47 ( .A(n53), .ZN(N26) );
  AOI222_X1 U48 ( .A1(N22), .A2(N13), .B1(A[1]), .B2(N16), .C1(N18), .C2(N10), 
        .ZN(n53) );
  INV_X1 U49 ( .A(n47), .ZN(N25) );
  AOI222_X1 U50 ( .A1(N21), .A2(N13), .B1(A[0]), .B2(N16), .C1(N17), .C2(N10), 
        .ZN(n47) );
  NOR2_X1 U51 ( .A1(Q_1), .A2(Q[0]), .ZN(N15) );
  NOR2_X1 U52 ( .A1(n54), .A2(n40), .ZN(N14) );
  INV_X1 U53 ( .A(Q[0]), .ZN(n40) );
  NAND2_X1 U54 ( .A1(Q[0]), .A2(n54), .ZN(N12) );
  MUX2_X2 U55 ( .A(\sub_41/carry[1] ), .B(N29), .S(N6), .Z(n82) );
  MUX2_X2 U56 ( .A(\count[1] ), .B(N30), .S(N6), .Z(n81) );
  MUX2_X2 U57 ( .A(\gt_27/SB ), .B(N31), .S(N6), .Z(n80) );
  MUX2_X2 U58 ( .A(Q_1), .B(Q[0]), .S(N6), .Z(n79) );
  MUX2_X2 U59 ( .A(Q[3]), .B(N25), .S(N6), .Z(n76) );
  MUX2_X2 U60 ( .A(Q[2]), .B(Q[3]), .S(N6), .Z(n73) );
  MUX2_X2 U61 ( .A(Q[1]), .B(Q[2]), .S(N6), .Z(n70) );
  MUX2_X2 U62 ( .A(Q[0]), .B(Q[1]), .S(N6), .Z(n67) );
  MUX2_X2 U63 ( .A(A[0]), .B(N26), .S(N6), .Z(n66) );
  MUX2_X2 U64 ( .A(A[1]), .B(N27), .S(N6), .Z(n65) );
  MUX2_X2 U65 ( .A(A[2]), .B(N28), .S(N6), .Z(n64) );
  MUX2_X2 U66 ( .A(A[3]), .B(N28), .S(N6), .Z(n63) );
  MUX2_X2 U67 ( .A(product[0]), .B(N32), .S(N39), .Z(n62) );
  MUX2_X2 U68 ( .A(product[1]), .B(N33), .S(N39), .Z(n61) );
  MUX2_X2 U69 ( .A(product[2]), .B(N34), .S(N39), .Z(n60) );
  MUX2_X2 U70 ( .A(product[3]), .B(N35), .S(N39), .Z(n59) );
  MUX2_X2 U71 ( .A(product[4]), .B(N36), .S(N39), .Z(n58) );
  MUX2_X2 U72 ( .A(product[5]), .B(N37), .S(N39), .Z(n57) );
  MUX2_X2 U73 ( .A(product[6]), .B(N38), .S(N39), .Z(n56) );
  MUX2_X2 U74 ( .A(product[7]), .B(N40), .S(N39), .Z(n55) );
  DFFS_X2 \count_reg[2]  ( .D(n80), .CK(clk), .SN(n39), .Q(\gt_27/SB ), .QN(
        \gt_27/AEQB[2] ) );
  DFFR_X1 \count_reg[1]  ( .D(n81), .CK(clk), .RN(n39), .Q(\count[1] ), .QN(
        \gt_27/LTV1[1] ) );
  DFFR_X1 \count_reg[0]  ( .D(n82), .CK(clk), .RN(n39), .Q(\sub_41/carry[1] ), 
        .QN(\gt_27/LTV1[0] ) );
  DFFR_X1 \A_reg[0]  ( .D(n66), .CK(clk), .RN(n39), .Q(A[0]), .QN(n97) );
  DFFR_X1 \A_reg[1]  ( .D(n65), .CK(clk), .RN(n39), .Q(A[1]) );
  DFFR_X1 \product_reg[4]  ( .D(n58), .CK(clk), .RN(n39), .Q(product[4]) );
  DFFR_X1 \product_reg[3]  ( .D(n59), .CK(clk), .RN(n39), .Q(product[3]) );
  DFFR_X1 \product_reg[2]  ( .D(n60), .CK(clk), .RN(n39), .Q(product[2]) );
  DFFR_X1 \product_reg[1]  ( .D(n61), .CK(clk), .RN(n39), .Q(product[1]) );
  DFFR_X1 \product_reg[0]  ( .D(n62), .CK(clk), .RN(n39), .Q(product[0]) );
  DFFR_X1 \product_reg[5]  ( .D(n57), .CK(clk), .RN(n39), .Q(product[5]) );
  DFFR_X1 \A_reg[3]  ( .D(n63), .CK(clk), .RN(n39), .Q(A[3]) );
  DFFR_X1 \A_reg[2]  ( .D(n64), .CK(clk), .RN(n39), .Q(A[2]) );
  DFFR_X1 \product_reg[7]  ( .D(n55), .CK(clk), .RN(n39), .Q(product[7]) );
  DFFR_X1 \product_reg[6]  ( .D(n56), .CK(clk), .RN(n39), .Q(product[6]) );
  NAND2_X2 U79 ( .A1(n96), .A2(n97), .ZN(\sub_31/carry[1] ) );
  XNOR2_X2 U80 ( .A(\sub_31/B_not[0] ), .B(A[0]), .ZN(N21) );
  INV_X4 U81 ( .A(\sub_31/B_not[0] ), .ZN(n96) );
  INV_X4 U82 ( .A(\gt_27/LTV1[0] ), .ZN(\gt_27/LTV[1] ) );
  INV_X4 U83 ( .A(\sub_41/carry[1] ), .ZN(N29) );
  INV_X4 U84 ( .A(\count[1] ), .ZN(\gt_27/AEQB[1] ) );
  NAND2_X2 U85 ( .A1(M[0]), .A2(A[0]), .ZN(n98) );
  INV_X4 U86 ( .A(n98), .ZN(\add_30/carry[1] ) );
  XNOR2_X2 U87 ( .A(M[0]), .B(A[0]), .ZN(n99) );
  INV_X4 U88 ( .A(n99), .ZN(N17) );
endmodule

