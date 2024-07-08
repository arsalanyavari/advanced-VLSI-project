
module booth_multiplier ( clk, reset, multiplicand, multiplier, product, done
 );
  input [3:0] multiplicand;
  input [3:0] multiplier;
  output [7:0] product;
  input clk, reset;
  output done;
  wire   Q_1, \count[0] , N25, N26, N27, n8, n11, n12, n21, n23, n24, n45, n46,
         n57, n61, n68, n70, n73, n79, n81, n83, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217;
  wire   [3:0] Q;
  wire   [3:0] A;
  wire   [3:0] M;

  DLH_X1 \M_reg[3]  ( .G(reset), .D(multiplicand[3]), .Q(M[3]) );
  DLH_X1 \M_reg[2]  ( .G(reset), .D(multiplicand[2]), .Q(M[2]) );
  DLH_X1 \M_reg[0]  ( .G(reset), .D(multiplicand[0]), .Q(M[0]) );
  DFFR_X1 \count_reg[1]  ( .D(n112), .CK(clk), .RN(n110), .Q(n130), .QN(n109)
         );
  DFFS_X2 \count_reg[2]  ( .D(n111), .CK(clk), .SN(n110), .Q(n131), .QN(n108)
         );
  DFFR_X1 done_reg ( .D(n106), .CK(clk), .RN(n110), .Q(done), .QN(n73) );
  DFFRS_X2 \Q_reg[3]  ( .D(n103), .CK(clk), .RN(n100), .SN(n101), .Q(Q[3]), 
        .QN(n102) );
  DFFRS_X2 \Q_reg[2]  ( .D(n99), .CK(clk), .RN(n96), .SN(n97), .Q(Q[2]), .QN(
        n98) );
  DFFRS_X2 \Q_reg[1]  ( .D(n95), .CK(clk), .RN(n92), .SN(n93), .Q(Q[1]), .QN(
        n94) );
  DFFRS_X2 \Q_reg[0]  ( .D(n91), .CK(clk), .RN(n88), .SN(n89), .Q(Q[0]), .QN(
        n90) );
  SDFFR_X2 \product_reg[0]  ( .D(Q[1]), .SI(Q[0]), .SE(n213), .CK(clk), .RN(
        n110), .Q(product[0]) );
  SDFFR_X2 \product_reg[1]  ( .D(Q[2]), .SI(Q[1]), .SE(n213), .CK(clk), .RN(
        n110), .Q(product[1]) );
  SDFFR_X2 \product_reg[2]  ( .D(Q[3]), .SI(Q[2]), .SE(n213), .CK(clk), .RN(
        n110), .Q(product[2]) );
  SDFFR_X2 \product_reg[3]  ( .D(N25), .SI(Q[3]), .SE(n213), .CK(clk), .RN(
        n110), .Q(product[3]) );
  DFFR_X1 \A_reg[3]  ( .D(n79), .CK(clk), .RN(n110), .Q(A[3]), .QN(n107) );
  SDFFR_X2 \product_reg[7]  ( .D(n212), .SI(A[3]), .SE(n213), .CK(clk), .RN(
        n110), .Q(product[7]) );
  SDFFR_X2 \product_reg[6]  ( .D(n212), .SI(A[2]), .SE(n213), .CK(clk), .RN(
        n110), .Q(product[6]) );
  SDFFR_X2 \product_reg[5]  ( .D(N27), .SI(n121), .SE(n213), .CK(clk), .RN(
        n110), .Q(product[5]) );
  SDFFR_X2 \product_reg[4]  ( .D(N26), .SI(A[0]), .SE(n213), .CK(clk), .RN(
        n110), .Q(product[4]) );
  INV_X1 U6 ( .A(n11), .ZN(n83) );
  AOI22_X1 U7 ( .A1(n121), .A2(n213), .B1(n8), .B2(N27), .ZN(n11) );
  NAND2_X1 U8 ( .A1(multiplier[0]), .A2(reset), .ZN(n89) );
  OR2_X1 U9 ( .A1(n110), .A2(multiplier[0]), .ZN(n88) );
  OAI22_X1 U10 ( .A1(n90), .A2(n8), .B1(n94), .B2(n213), .ZN(n91) );
  NAND2_X1 U11 ( .A1(multiplier[1]), .A2(reset), .ZN(n93) );
  OR2_X1 U12 ( .A1(n110), .A2(multiplier[1]), .ZN(n92) );
  OAI22_X1 U13 ( .A1(n94), .A2(n8), .B1(n98), .B2(n213), .ZN(n95) );
  NAND2_X1 U14 ( .A1(multiplier[2]), .A2(reset), .ZN(n97) );
  OR2_X1 U15 ( .A1(n110), .A2(multiplier[2]), .ZN(n96) );
  OAI22_X1 U16 ( .A1(n98), .A2(n8), .B1(n102), .B2(n213), .ZN(n99) );
  NAND2_X1 U17 ( .A1(multiplier[3]), .A2(reset), .ZN(n101) );
  OR2_X1 U18 ( .A1(n110), .A2(multiplier[3]), .ZN(n100) );
  OAI22_X1 U19 ( .A1(n102), .A2(n8), .B1(n213), .B2(n12), .ZN(n103) );
  INV_X1 U20 ( .A(N25), .ZN(n12) );
  OAI21_X1 U26 ( .B1(M[1]), .B2(n142), .A(n24), .ZN(n23) );
  NAND3_X1 U27 ( .A1(M[0]), .A2(n142), .A3(M[1]), .ZN(n24) );
  OAI22_X1 U28 ( .A1(n142), .A2(n8), .B1(n90), .B2(n213), .ZN(n105) );
  NAND2_X1 U30 ( .A1(n73), .A2(n8), .ZN(n106) );
  AOI21_X1 U32 ( .B1(n113), .B2(n109), .A(n108), .ZN(n111) );
  XNOR2_X1 U33 ( .A(n113), .B(n109), .ZN(n112) );
  NOR2_X1 U34 ( .A1(n213), .A2(\count[0] ), .ZN(n113) );
  OAI22_X1 U50 ( .A1(n45), .A2(n215), .B1(A[2]), .B2(n46), .ZN(N27) );
  NAND3_X1 U68 ( .A1(n90), .A2(n61), .A3(n121), .ZN(n57) );
  OAI21_X1 U69 ( .B1(M[1]), .B2(A[0]), .A(n21), .ZN(n61) );
  NOR2_X1 U85 ( .A1(n121), .A2(n217), .ZN(n68) );
  OAI21_X1 U86 ( .B1(n217), .B2(n216), .A(n70), .ZN(N25) );
  OAI21_X1 U87 ( .B1(n214), .B2(n216), .A(A[0]), .ZN(n70) );
  DLH_X2 \M_reg[1]  ( .G(reset), .D(multiplicand[1]), .Q(M[1]) );
  DFFR_X2 \count_reg[0]  ( .D(n113), .CK(clk), .RN(n110), .Q(\count[0] ), .QN(
        n133) );
  DFFR_X2 Q_1_reg ( .D(n105), .CK(clk), .RN(n110), .Q(Q_1), .QN(n142) );
  DFFR_X2 \A_reg[0]  ( .D(n104), .CK(clk), .RN(n110), .Q(A[0]), .QN(n135) );
  DFFR_X2 \A_reg[2]  ( .D(n81), .CK(clk), .RN(n110), .Q(A[2]), .QN(n215) );
  DFFR_X2 \A_reg[1]  ( .D(n83), .CK(clk), .RN(n110), .Q(A[1]), .QN(n120) );
  AND3_X4 U93 ( .A1(n8), .A2(n135), .A3(n23), .ZN(n114) );
  AND2_X4 U94 ( .A1(n121), .A2(n152), .ZN(n115) );
  OR2_X4 U95 ( .A1(n140), .A2(n139), .ZN(n116) );
  OR2_X4 U96 ( .A1(M[0]), .A2(M[1]), .ZN(n117) );
  OAI21_X2 U97 ( .B1(n217), .B2(n152), .A(n151), .ZN(n153) );
  OAI21_X2 U98 ( .B1(n159), .B2(n120), .A(n21), .ZN(n123) );
  INV_X4 U99 ( .A(n8), .ZN(n213) );
  OAI21_X2 U100 ( .B1(n208), .B2(n114), .A(n121), .ZN(n209) );
  AOI21_X2 U101 ( .B1(A[0]), .B2(M[0]), .A(M[1]), .ZN(n159) );
  OAI211_X2 U102 ( .C1(n162), .C2(n164), .A(n181), .B(n165), .ZN(n160) );
  XOR2_X2 U103 ( .A(n122), .B(M[2]), .Z(n128) );
  NAND2_X2 U104 ( .A1(n133), .A2(n132), .ZN(n8) );
  OAI21_X2 U105 ( .B1(n144), .B2(n143), .A(n120), .ZN(n145) );
  AOI21_X2 U106 ( .B1(M[1]), .B2(Q_1), .A(n121), .ZN(n137) );
  AND2_X2 U107 ( .A1(n148), .A2(n147), .ZN(n118) );
  INV_X4 U108 ( .A(reset), .ZN(n110) );
  NAND3_X2 U109 ( .A1(n167), .A2(n168), .A3(n166), .ZN(n119) );
  INV_X2 U110 ( .A(n119), .ZN(n199) );
  INV_X4 U111 ( .A(n120), .ZN(n121) );
  INV_X4 U112 ( .A(M[0]), .ZN(n214) );
  XNOR2_X2 U113 ( .A(Q_1), .B(n90), .ZN(n176) );
  INV_X4 U114 ( .A(n176), .ZN(n216) );
  NAND2_X2 U115 ( .A1(n135), .A2(M[0]), .ZN(n217) );
  NAND3_X2 U116 ( .A1(M[1]), .A2(M[0]), .A3(A[0]), .ZN(n21) );
  INV_X4 U117 ( .A(M[1]), .ZN(n152) );
  OAI22_X2 U118 ( .A1(n115), .A2(n217), .B1(n152), .B2(n121), .ZN(n122) );
  INV_X4 U119 ( .A(n128), .ZN(n125) );
  INV_X4 U120 ( .A(M[2]), .ZN(n156) );
  XNOR2_X2 U121 ( .A(n123), .B(n156), .ZN(n127) );
  INV_X4 U122 ( .A(n127), .ZN(n124) );
  MUX2_X2 U123 ( .A(n125), .B(n124), .S(n90), .Z(n126) );
  NOR2_X2 U124 ( .A1(n126), .A2(n216), .ZN(n45) );
  MUX2_X2 U125 ( .A(n128), .B(n127), .S(Q_1), .Z(n129) );
  NAND2_X2 U126 ( .A1(n176), .A2(n129), .ZN(n46) );
  NOR2_X2 U127 ( .A1(n131), .A2(n130), .ZN(n132) );
  NAND2_X2 U128 ( .A1(Q_1), .A2(M[0]), .ZN(n134) );
  MUX2_X2 U129 ( .A(n152), .B(n134), .S(n90), .Z(n136) );
  NOR2_X2 U130 ( .A1(n136), .A2(n135), .ZN(n138) );
  NAND2_X2 U131 ( .A1(n138), .A2(n137), .ZN(n211) );
  MUX2_X2 U132 ( .A(n135), .B(n217), .S(M[1]), .Z(n140) );
  NAND2_X2 U133 ( .A1(n121), .A2(Q[0]), .ZN(n139) );
  NAND2_X2 U134 ( .A1(n176), .A2(n117), .ZN(n141) );
  NAND2_X2 U135 ( .A1(n121), .A2(n141), .ZN(n148) );
  NAND3_X2 U136 ( .A1(n68), .A2(Q[0]), .A3(n142), .ZN(n146) );
  NOR2_X2 U137 ( .A1(n216), .A2(M[0]), .ZN(n144) );
  NAND2_X2 U138 ( .A1(Q_1), .A2(n90), .ZN(n196) );
  NOR2_X2 U139 ( .A1(n196), .A2(A[0]), .ZN(n143) );
  MUX2_X2 U140 ( .A(n146), .B(n145), .S(M[1]), .Z(n147) );
  NAND4_X2 U141 ( .A1(n211), .A2(n116), .A3(n118), .A4(n57), .ZN(N26) );
  NAND2_X2 U142 ( .A1(A[2]), .A2(n156), .ZN(n150) );
  NAND2_X2 U143 ( .A1(n215), .A2(M[2]), .ZN(n151) );
  NAND3_X2 U144 ( .A1(n217), .A2(n151), .A3(n152), .ZN(n149) );
  NAND2_X2 U145 ( .A1(n150), .A2(n149), .ZN(n191) );
  INV_X4 U146 ( .A(n191), .ZN(n179) );
  INV_X4 U147 ( .A(n153), .ZN(n187) );
  NAND2_X2 U148 ( .A1(n121), .A2(n187), .ZN(n154) );
  NAND2_X2 U149 ( .A1(n179), .A2(n154), .ZN(n155) );
  INV_X4 U150 ( .A(M[3]), .ZN(n181) );
  XNOR2_X2 U151 ( .A(n155), .B(n181), .ZN(n171) );
  INV_X4 U152 ( .A(n171), .ZN(n169) );
  NAND2_X2 U153 ( .A1(n215), .A2(n156), .ZN(n165) );
  NAND2_X2 U154 ( .A1(A[2]), .A2(M[2]), .ZN(n157) );
  NAND2_X2 U155 ( .A1(n21), .A2(n157), .ZN(n162) );
  NAND2_X2 U156 ( .A1(n165), .A2(n162), .ZN(n158) );
  NAND2_X2 U157 ( .A1(n158), .A2(M[3]), .ZN(n161) );
  INV_X4 U158 ( .A(n159), .ZN(n164) );
  NAND2_X2 U159 ( .A1(n161), .A2(n160), .ZN(n168) );
  INV_X4 U160 ( .A(n162), .ZN(n163) );
  NAND3_X2 U161 ( .A1(n181), .A2(n163), .A3(n120), .ZN(n167) );
  NAND4_X2 U162 ( .A1(n165), .A2(M[3]), .A3(n121), .A4(n164), .ZN(n166) );
  NAND3_X2 U163 ( .A1(n168), .A2(n167), .A3(n166), .ZN(n201) );
  MUX2_X2 U164 ( .A(n169), .B(n199), .S(n90), .Z(n170) );
  NAND2_X2 U165 ( .A1(n176), .A2(n170), .ZN(n175) );
  NOR2_X2 U166 ( .A1(n171), .A2(n90), .ZN(n173) );
  NOR2_X2 U167 ( .A1(n119), .A2(Q[0]), .ZN(n172) );
  MUX2_X2 U168 ( .A(n173), .B(n172), .S(Q_1), .Z(n174) );
  MUX2_X2 U169 ( .A(n175), .B(n174), .S(n107), .Z(n212) );
  MUX2_X2 U170 ( .A(n212), .B(A[3]), .S(n213), .Z(n79) );
  NOR3_X2 U171 ( .A1(n107), .A2(n176), .A3(n213), .ZN(n186) );
  NAND2_X2 U172 ( .A1(n107), .A2(n8), .ZN(n197) );
  INV_X4 U173 ( .A(n197), .ZN(n178) );
  NOR2_X2 U174 ( .A1(n90), .A2(Q_1), .ZN(n177) );
  NAND2_X2 U175 ( .A1(n178), .A2(n177), .ZN(n182) );
  NAND3_X2 U176 ( .A1(A[3]), .A2(n8), .A3(Q[0]), .ZN(n180) );
  OAI22_X2 U177 ( .A1(n182), .A2(M[3]), .B1(n180), .B2(n181), .ZN(n189) );
  NAND3_X2 U178 ( .A1(n179), .A2(n189), .A3(n120), .ZN(n184) );
  OAI22_X2 U179 ( .A1(n182), .A2(n181), .B1(n180), .B2(M[3]), .ZN(n190) );
  NAND3_X2 U180 ( .A1(n187), .A2(n190), .A3(n121), .ZN(n183) );
  NAND2_X2 U181 ( .A1(n184), .A2(n183), .ZN(n185) );
  NOR2_X2 U182 ( .A1(n186), .A2(n185), .ZN(n205) );
  NOR2_X2 U183 ( .A1(n8), .A2(n215), .ZN(n195) );
  NOR2_X2 U184 ( .A1(n187), .A2(n191), .ZN(n188) );
  NAND2_X2 U185 ( .A1(n189), .A2(n188), .ZN(n193) );
  NAND2_X2 U186 ( .A1(n191), .A2(n190), .ZN(n192) );
  NAND2_X2 U187 ( .A1(n193), .A2(n192), .ZN(n194) );
  NOR2_X2 U188 ( .A1(n195), .A2(n194), .ZN(n204) );
  NOR2_X2 U189 ( .A1(n197), .A2(n196), .ZN(n198) );
  NAND2_X2 U190 ( .A1(n199), .A2(n198), .ZN(n203) );
  NOR3_X2 U191 ( .A1(n107), .A2(n213), .A3(Q[0]), .ZN(n200) );
  NAND2_X2 U192 ( .A1(n201), .A2(n200), .ZN(n202) );
  NAND4_X2 U193 ( .A1(n205), .A2(n204), .A3(n203), .A4(n202), .ZN(n81) );
  MUX2_X2 U194 ( .A(n118), .B(n135), .S(n213), .Z(n210) );
  INV_X4 U195 ( .A(n21), .ZN(n207) );
  NOR2_X2 U196 ( .A1(M[1]), .A2(n135), .ZN(n206) );
  MUX2_X2 U197 ( .A(n207), .B(n206), .S(n142), .Z(n208) );
  NAND3_X2 U198 ( .A1(n211), .A2(n210), .A3(n209), .ZN(n104) );
endmodule

