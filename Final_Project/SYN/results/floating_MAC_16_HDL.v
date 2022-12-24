/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon Dec 19 22:17:08 2022
/////////////////////////////////////////////////////////////


module floating_mul_16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [6:1] carry;

  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  XOR2X1_RVT U1 ( .A1(B[5]), .A2(carry[5]), .Y(SUM[5]) );
  XNOR2X1_RVT U2 ( .A1(B[6]), .A2(n1), .Y(SUM[6]) );
  NAND2X0_RVT U3 ( .A1(B[5]), .A2(carry[5]), .Y(n1) );
  XOR2X1_RVT U4 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  AND2X1_RVT U5 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
endmodule


module floating_mul_16_DW_mult_uns_0 ( a, b, product );
  input [9:0] a;
  input [9:0] b;
  output [19:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n253, n254, n255, n256, n257, n258, n259, n260, n316, n317,
         n318, n319, n320, n321, n322, n323, n324;

  FADDX1_RVT U2 ( .A(n163), .B(n19), .CI(n2), .CO(product[19]), .S(product[18]) );
  FADDX1_RVT U3 ( .A(n20), .B(n21), .CI(n3), .CO(n2), .S(product[17]) );
  FADDX1_RVT U4 ( .A(n22), .B(n25), .CI(n4), .CO(n3), .S(product[16]) );
  FADDX1_RVT U5 ( .A(n31), .B(n26), .CI(n5), .CO(n4), .S(product[15]) );
  FADDX1_RVT U6 ( .A(n39), .B(n32), .CI(n6), .CO(n5), .S(product[14]) );
  FADDX1_RVT U7 ( .A(n49), .B(n40), .CI(n7), .CO(n6), .S(product[13]) );
  FADDX1_RVT U8 ( .A(n61), .B(n50), .CI(n8), .CO(n7), .S(product[12]) );
  FADDX1_RVT U9 ( .A(n75), .B(n62), .CI(n9), .CO(n8), .S(product[11]) );
  FADDX1_RVT U10 ( .A(n91), .B(n76), .CI(n10), .CO(n9), .S(product[10]) );
  FADDX1_RVT U20 ( .A(n173), .B(n164), .CI(n23), .CO(n19), .S(n20) );
  FADDX1_RVT U21 ( .A(n29), .B(n24), .CI(n27), .CO(n21), .S(n22) );
  FADDX1_RVT U22 ( .A(n183), .B(n165), .CI(n174), .CO(n23), .S(n24) );
  FADDX1_RVT U23 ( .A(n35), .B(n28), .CI(n33), .CO(n25), .S(n26) );
  FADDX1_RVT U24 ( .A(n184), .B(n37), .CI(n30), .CO(n27), .S(n28) );
  FADDX1_RVT U25 ( .A(n193), .B(n166), .CI(n175), .CO(n29), .S(n30) );
  FADDX1_RVT U26 ( .A(n36), .B(n41), .CI(n34), .CO(n31), .S(n32) );
  FADDX1_RVT U27 ( .A(n45), .B(n38), .CI(n43), .CO(n33), .S(n34) );
  FADDX1_RVT U28 ( .A(n194), .B(n185), .CI(n47), .CO(n35), .S(n36) );
  FADDX1_RVT U29 ( .A(n203), .B(n167), .CI(n176), .CO(n37), .S(n38) );
  FADDX1_RVT U30 ( .A(n44), .B(n51), .CI(n42), .CO(n39), .S(n40) );
  FADDX1_RVT U31 ( .A(n48), .B(n55), .CI(n53), .CO(n41), .S(n42) );
  FADDX1_RVT U32 ( .A(n59), .B(n57), .CI(n46), .CO(n43), .S(n44) );
  FADDX1_RVT U33 ( .A(n186), .B(n195), .CI(n204), .CO(n45), .S(n46) );
  FADDX1_RVT U34 ( .A(n213), .B(n168), .CI(n177), .CO(n47), .S(n48) );
  FADDX1_RVT U35 ( .A(n54), .B(n63), .CI(n52), .CO(n49), .S(n50) );
  FADDX1_RVT U36 ( .A(n67), .B(n56), .CI(n65), .CO(n51), .S(n52) );
  FADDX1_RVT U37 ( .A(n58), .B(n60), .CI(n69), .CO(n53), .S(n54) );
  FADDX1_RVT U38 ( .A(n196), .B(n73), .CI(n71), .CO(n55), .S(n56) );
  FADDX1_RVT U39 ( .A(n187), .B(n214), .CI(n205), .CO(n57), .S(n58) );
  FADDX1_RVT U40 ( .A(n223), .B(n169), .CI(n178), .CO(n59), .S(n60) );
  FADDX1_RVT U41 ( .A(n66), .B(n77), .CI(n64), .CO(n61), .S(n62) );
  FADDX1_RVT U42 ( .A(n81), .B(n68), .CI(n79), .CO(n63), .S(n64) );
  FADDX1_RVT U43 ( .A(n74), .B(n83), .CI(n70), .CO(n65), .S(n66) );
  FADDX1_RVT U44 ( .A(n87), .B(n85), .CI(n72), .CO(n67), .S(n68) );
  FADDX1_RVT U45 ( .A(n215), .B(n206), .CI(n89), .CO(n69), .S(n70) );
  FADDX1_RVT U46 ( .A(n224), .B(n188), .CI(n197), .CO(n71), .S(n72) );
  FADDX1_RVT U47 ( .A(n233), .B(n170), .CI(n179), .CO(n73), .S(n74) );
  FADDX1_RVT U48 ( .A(n93), .B(n80), .CI(n78), .CO(n75), .S(n76) );
  FADDX1_RVT U49 ( .A(n84), .B(n95), .CI(n82), .CO(n77), .S(n78) );
  FADDX1_RVT U50 ( .A(n88), .B(n99), .CI(n97), .CO(n79), .S(n80) );
  FADDX1_RVT U51 ( .A(n103), .B(n101), .CI(n86), .CO(n81), .S(n82) );
  FADDX1_RVT U52 ( .A(n216), .B(n105), .CI(n90), .CO(n83), .S(n84) );
  FADDX1_RVT U53 ( .A(n225), .B(n189), .CI(n198), .CO(n85), .S(n86) );
  FADDX1_RVT U54 ( .A(n207), .B(n243), .CI(n234), .CO(n87), .S(n88) );
  HADDX1_RVT U55 ( .A0(n180), .B0(n171), .C1(n89), .SO(n90) );
  FADDX1_RVT U56 ( .A(n109), .B(n96), .CI(n94), .CO(n91), .S(n92) );
  FADDX1_RVT U57 ( .A(n100), .B(n111), .CI(n98), .CO(n93), .S(n94) );
  FADDX1_RVT U58 ( .A(n102), .B(n104), .CI(n113), .CO(n95), .S(n96) );
  FADDX1_RVT U59 ( .A(n106), .B(n117), .CI(n115), .CO(n97), .S(n98) );
  FADDX1_RVT U60 ( .A(n235), .B(n226), .CI(n119), .CO(n99), .S(n100) );
  FADDX1_RVT U61 ( .A(n208), .B(n199), .CI(n217), .CO(n101), .S(n102) );
  FADDX1_RVT U62 ( .A(n253), .B(n190), .CI(n244), .CO(n103), .S(n104) );
  HADDX1_RVT U63 ( .A0(n181), .B0(n172), .C1(n105), .SO(n106) );
  FADDX1_RVT U64 ( .A(n123), .B(n112), .CI(n110), .CO(n107), .S(n108) );
  FADDX1_RVT U65 ( .A(n118), .B(n125), .CI(n114), .CO(n109), .S(n110) );
  FADDX1_RVT U66 ( .A(n129), .B(n127), .CI(n116), .CO(n111), .S(n112) );
  FADDX1_RVT U67 ( .A(n227), .B(n131), .CI(n120), .CO(n113), .S(n114) );
  FADDX1_RVT U68 ( .A(n218), .B(n236), .CI(n209), .CO(n115), .S(n116) );
  FADDX1_RVT U69 ( .A(n254), .B(n200), .CI(n245), .CO(n117), .S(n118) );
  HADDX1_RVT U70 ( .A0(n191), .B0(n182), .C1(n119), .SO(n120) );
  FADDX1_RVT U71 ( .A(n135), .B(n126), .CI(n124), .CO(n121), .S(n122) );
  FADDX1_RVT U72 ( .A(n128), .B(n130), .CI(n137), .CO(n123), .S(n124) );
  FADDX1_RVT U73 ( .A(n141), .B(n132), .CI(n139), .CO(n125), .S(n126) );
  FADDX1_RVT U74 ( .A(n237), .B(n219), .CI(n228), .CO(n127), .S(n128) );
  FADDX1_RVT U75 ( .A(n255), .B(n210), .CI(n246), .CO(n129), .S(n130) );
  HADDX1_RVT U76 ( .A0(n201), .B0(n192), .C1(n131), .SO(n132) );
  FADDX1_RVT U77 ( .A(n145), .B(n138), .CI(n136), .CO(n133), .S(n134) );
  FADDX1_RVT U78 ( .A(n142), .B(n147), .CI(n140), .CO(n135), .S(n136) );
  FADDX1_RVT U79 ( .A(n238), .B(n229), .CI(n149), .CO(n137), .S(n138) );
  FADDX1_RVT U80 ( .A(n256), .B(n220), .CI(n247), .CO(n139), .S(n140) );
  HADDX1_RVT U81 ( .A0(n211), .B0(n202), .C1(n141), .SO(n142) );
  FADDX1_RVT U82 ( .A(n153), .B(n148), .CI(n146), .CO(n143), .S(n144) );
  FADDX1_RVT U83 ( .A(n248), .B(n155), .CI(n150), .CO(n145), .S(n146) );
  FADDX1_RVT U84 ( .A(n257), .B(n230), .CI(n239), .CO(n147), .S(n148) );
  HADDX1_RVT U85 ( .A0(n221), .B0(n212), .C1(n149), .SO(n150) );
  FADDX1_RVT U86 ( .A(n159), .B(n156), .CI(n154), .CO(n151), .S(n152) );
  FADDX1_RVT U87 ( .A(n258), .B(n240), .CI(n249), .CO(n153), .S(n154) );
  HADDX1_RVT U88 ( .A0(n231), .B0(n222), .C1(n155), .SO(n156) );
  FADDX1_RVT U89 ( .A(n259), .B(n250), .CI(n161), .CO(n157), .S(n158) );
  HADDX1_RVT U90 ( .A0(n241), .B0(n232), .C1(n159), .SO(n160) );
  HADDX1_RVT U91 ( .A0(n260), .B0(n251), .C1(n161), .SO(n162) );
  AND2X1_RVT U213 ( .A1(b[2]), .A2(a[0]), .Y(n260) );
  AND2X1_RVT U214 ( .A1(b[3]), .A2(a[0]), .Y(n259) );
  AND2X1_RVT U215 ( .A1(b[4]), .A2(a[0]), .Y(n258) );
  AND2X1_RVT U216 ( .A1(b[5]), .A2(a[0]), .Y(n257) );
  AND2X1_RVT U217 ( .A1(b[6]), .A2(a[0]), .Y(n256) );
  AND2X1_RVT U218 ( .A1(b[7]), .A2(a[0]), .Y(n255) );
  AND2X1_RVT U219 ( .A1(b[8]), .A2(a[0]), .Y(n254) );
  AND2X1_RVT U220 ( .A1(b[9]), .A2(a[0]), .Y(n253) );
  AND2X1_RVT U221 ( .A1(b[1]), .A2(a[1]), .Y(n251) );
  AND2X1_RVT U222 ( .A1(a[1]), .A2(b[2]), .Y(n250) );
  AND2X1_RVT U223 ( .A1(a[1]), .A2(b[3]), .Y(n249) );
  AND2X1_RVT U224 ( .A1(a[1]), .A2(b[4]), .Y(n248) );
  AND2X1_RVT U225 ( .A1(a[1]), .A2(b[5]), .Y(n247) );
  AND2X1_RVT U226 ( .A1(a[1]), .A2(b[6]), .Y(n246) );
  AND2X1_RVT U227 ( .A1(a[1]), .A2(b[7]), .Y(n245) );
  AND2X1_RVT U228 ( .A1(a[1]), .A2(b[8]), .Y(n244) );
  AND2X1_RVT U229 ( .A1(a[1]), .A2(b[9]), .Y(n243) );
  AND2X1_RVT U230 ( .A1(a[2]), .A2(b[1]), .Y(n241) );
  AND2X1_RVT U231 ( .A1(a[2]), .A2(b[2]), .Y(n240) );
  AND2X1_RVT U232 ( .A1(a[2]), .A2(b[3]), .Y(n239) );
  AND2X1_RVT U233 ( .A1(a[2]), .A2(b[4]), .Y(n238) );
  AND2X1_RVT U234 ( .A1(a[2]), .A2(b[5]), .Y(n237) );
  AND2X1_RVT U235 ( .A1(a[2]), .A2(b[6]), .Y(n236) );
  AND2X1_RVT U236 ( .A1(a[2]), .A2(b[7]), .Y(n235) );
  AND2X1_RVT U237 ( .A1(a[2]), .A2(b[8]), .Y(n234) );
  AND2X1_RVT U238 ( .A1(a[2]), .A2(b[9]), .Y(n233) );
  AND2X1_RVT U239 ( .A1(b[0]), .A2(a[3]), .Y(n232) );
  AND2X1_RVT U240 ( .A1(a[3]), .A2(b[1]), .Y(n231) );
  AND2X1_RVT U241 ( .A1(a[3]), .A2(b[2]), .Y(n230) );
  AND2X1_RVT U242 ( .A1(a[3]), .A2(b[3]), .Y(n229) );
  AND2X1_RVT U243 ( .A1(a[3]), .A2(b[4]), .Y(n228) );
  AND2X1_RVT U244 ( .A1(a[3]), .A2(b[5]), .Y(n227) );
  AND2X1_RVT U245 ( .A1(a[3]), .A2(b[6]), .Y(n226) );
  AND2X1_RVT U246 ( .A1(a[3]), .A2(b[7]), .Y(n225) );
  AND2X1_RVT U247 ( .A1(a[3]), .A2(b[8]), .Y(n224) );
  AND2X1_RVT U248 ( .A1(a[3]), .A2(b[9]), .Y(n223) );
  AND2X1_RVT U249 ( .A1(a[4]), .A2(b[0]), .Y(n222) );
  AND2X1_RVT U250 ( .A1(a[4]), .A2(b[1]), .Y(n221) );
  AND2X1_RVT U251 ( .A1(a[4]), .A2(b[2]), .Y(n220) );
  AND2X1_RVT U252 ( .A1(a[4]), .A2(b[3]), .Y(n219) );
  AND2X1_RVT U253 ( .A1(a[4]), .A2(b[4]), .Y(n218) );
  AND2X1_RVT U254 ( .A1(a[4]), .A2(b[5]), .Y(n217) );
  AND2X1_RVT U255 ( .A1(a[4]), .A2(b[6]), .Y(n216) );
  AND2X1_RVT U256 ( .A1(a[4]), .A2(b[7]), .Y(n215) );
  AND2X1_RVT U257 ( .A1(a[4]), .A2(b[8]), .Y(n214) );
  AND2X1_RVT U258 ( .A1(a[4]), .A2(b[9]), .Y(n213) );
  AND2X1_RVT U259 ( .A1(a[5]), .A2(b[0]), .Y(n212) );
  AND2X1_RVT U260 ( .A1(a[5]), .A2(b[1]), .Y(n211) );
  AND2X1_RVT U261 ( .A1(a[5]), .A2(b[2]), .Y(n210) );
  AND2X1_RVT U262 ( .A1(a[5]), .A2(b[3]), .Y(n209) );
  AND2X1_RVT U263 ( .A1(a[5]), .A2(b[4]), .Y(n208) );
  AND2X1_RVT U264 ( .A1(a[5]), .A2(b[5]), .Y(n207) );
  AND2X1_RVT U265 ( .A1(a[5]), .A2(b[6]), .Y(n206) );
  AND2X1_RVT U266 ( .A1(a[5]), .A2(b[7]), .Y(n205) );
  AND2X1_RVT U267 ( .A1(a[5]), .A2(b[8]), .Y(n204) );
  AND2X1_RVT U268 ( .A1(a[5]), .A2(b[9]), .Y(n203) );
  AND2X1_RVT U269 ( .A1(a[6]), .A2(b[0]), .Y(n202) );
  AND2X1_RVT U270 ( .A1(a[6]), .A2(b[1]), .Y(n201) );
  AND2X1_RVT U271 ( .A1(a[6]), .A2(b[2]), .Y(n200) );
  AND2X1_RVT U272 ( .A1(a[6]), .A2(b[3]), .Y(n199) );
  AND2X1_RVT U273 ( .A1(a[6]), .A2(b[4]), .Y(n198) );
  AND2X1_RVT U274 ( .A1(a[6]), .A2(b[5]), .Y(n197) );
  AND2X1_RVT U275 ( .A1(a[6]), .A2(b[6]), .Y(n196) );
  AND2X1_RVT U276 ( .A1(a[6]), .A2(b[7]), .Y(n195) );
  AND2X1_RVT U277 ( .A1(a[6]), .A2(b[8]), .Y(n194) );
  AND2X1_RVT U278 ( .A1(a[6]), .A2(b[9]), .Y(n193) );
  AND2X1_RVT U279 ( .A1(a[7]), .A2(b[0]), .Y(n192) );
  AND2X1_RVT U280 ( .A1(a[7]), .A2(b[1]), .Y(n191) );
  AND2X1_RVT U281 ( .A1(a[7]), .A2(b[2]), .Y(n190) );
  AND2X1_RVT U282 ( .A1(a[7]), .A2(b[3]), .Y(n189) );
  AND2X1_RVT U283 ( .A1(a[7]), .A2(b[4]), .Y(n188) );
  AND2X1_RVT U284 ( .A1(a[7]), .A2(b[5]), .Y(n187) );
  AND2X1_RVT U285 ( .A1(a[7]), .A2(b[6]), .Y(n186) );
  AND2X1_RVT U286 ( .A1(a[7]), .A2(b[7]), .Y(n185) );
  AND2X1_RVT U287 ( .A1(a[7]), .A2(b[8]), .Y(n184) );
  AND2X1_RVT U288 ( .A1(a[7]), .A2(b[9]), .Y(n183) );
  AND2X1_RVT U289 ( .A1(a[8]), .A2(b[0]), .Y(n182) );
  AND2X1_RVT U290 ( .A1(a[8]), .A2(b[1]), .Y(n181) );
  AND2X1_RVT U291 ( .A1(a[8]), .A2(b[2]), .Y(n180) );
  AND2X1_RVT U292 ( .A1(a[8]), .A2(b[3]), .Y(n179) );
  AND2X1_RVT U293 ( .A1(a[8]), .A2(b[4]), .Y(n178) );
  AND2X1_RVT U294 ( .A1(a[8]), .A2(b[5]), .Y(n177) );
  AND2X1_RVT U295 ( .A1(a[8]), .A2(b[6]), .Y(n176) );
  AND2X1_RVT U296 ( .A1(a[8]), .A2(b[7]), .Y(n175) );
  AND2X1_RVT U297 ( .A1(a[8]), .A2(b[8]), .Y(n174) );
  AND2X1_RVT U298 ( .A1(a[8]), .A2(b[9]), .Y(n173) );
  AND2X1_RVT U299 ( .A1(a[9]), .A2(b[0]), .Y(n172) );
  AND2X1_RVT U300 ( .A1(a[9]), .A2(b[1]), .Y(n171) );
  AND2X1_RVT U301 ( .A1(a[9]), .A2(b[2]), .Y(n170) );
  AND2X1_RVT U302 ( .A1(a[9]), .A2(b[3]), .Y(n169) );
  AND2X1_RVT U303 ( .A1(a[9]), .A2(b[4]), .Y(n168) );
  AND2X1_RVT U304 ( .A1(a[9]), .A2(b[5]), .Y(n167) );
  AND2X1_RVT U305 ( .A1(a[9]), .A2(b[6]), .Y(n166) );
  AND2X1_RVT U306 ( .A1(a[9]), .A2(b[7]), .Y(n165) );
  AND2X1_RVT U307 ( .A1(a[9]), .A2(b[8]), .Y(n164) );
  AND2X1_RVT U308 ( .A1(a[9]), .A2(b[9]), .Y(n163) );
  AO222X1_RVT U309 ( .A1(n316), .A2(n107), .A3(n316), .A4(n92), .A5(n92), .A6(
        n107), .Y(n10) );
  AO222X1_RVT U310 ( .A1(n317), .A2(n121), .A3(n317), .A4(n108), .A5(n108), 
        .A6(n121), .Y(n316) );
  AO222X1_RVT U311 ( .A1(n318), .A2(n133), .A3(n318), .A4(n122), .A5(n122), 
        .A6(n133), .Y(n317) );
  AO222X1_RVT U312 ( .A1(n319), .A2(n143), .A3(n319), .A4(n134), .A5(n134), 
        .A6(n143), .Y(n318) );
  AO222X1_RVT U313 ( .A1(n320), .A2(n151), .A3(n320), .A4(n144), .A5(n144), 
        .A6(n151), .Y(n319) );
  AO222X1_RVT U314 ( .A1(n321), .A2(n157), .A3(n321), .A4(n152), .A5(n152), 
        .A6(n157), .Y(n320) );
  AO222X1_RVT U315 ( .A1(n158), .A2(n160), .A3(n322), .A4(n158), .A5(n322), 
        .A6(n160), .Y(n321) );
  AO222X1_RVT U316 ( .A1(n323), .A2(n162), .A3(n162), .A4(n324), .A5(n323), 
        .A6(n324), .Y(n322) );
  AND4X1_RVT U317 ( .A1(b[0]), .A2(b[1]), .A3(a[1]), .A4(a[0]), .Y(n324) );
  AND2X1_RVT U318 ( .A1(b[0]), .A2(a[2]), .Y(n323) );
endmodule


module floating_mul_16 ( CLK, RESETn, data_in_01, data_in_02, data_in_03, 
        sign_out, data_out, data_out_03 );
  input [15:0] data_in_01;
  input [15:0] data_in_02;
  input [15:0] data_in_03;
  output [16:0] data_out;
  output [15:0] data_out_03;
  input CLK, RESETn;
  output sign_out;
  wire   sign_01, sign_02, \data_buffer[0][15] , \data_buffer[0][14] ,
         \data_buffer[0][13] , \data_buffer[0][12] , \data_buffer[0][11] ,
         \data_buffer[0][10] , \data_buffer[0][9] , \data_buffer[0][8] ,
         \data_buffer[0][7] , \data_buffer[0][6] , \data_buffer[0][5] ,
         \data_buffer[0][4] , \data_buffer[0][3] , \data_buffer[0][2] ,
         \data_buffer[0][1] , \data_buffer[0][0] , sign_temp_in, N12, N13, N14,
         N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, n22, n23, n24, n25, n26, n27, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         \sub_1_root_sub_0_root_sub_79/carry[2] ,
         \sub_1_root_sub_0_root_sub_79/carry[3] ,
         \sub_1_root_sub_0_root_sub_79/carry[4] ,
         \sub_1_root_sub_0_root_sub_79/DIFF[1] ,
         \sub_1_root_sub_0_root_sub_79/DIFF[2] ,
         \sub_1_root_sub_0_root_sub_79/DIFF[3] ,
         \sub_1_root_sub_0_root_sub_79/DIFF[4] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;
  wire   [4:0] expo_01;
  wire   [4:0] expo_02;
  wire   [9:0] frac_01;
  wire   [9:0] frac_02;
  wire   [6:0] expo_temp_in;
  wire   [19:10] frac_temp_in;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;

  DFFARX1_RVT \expo_01_reg[2]  ( .D(data_in_01[12]), .CLK(CLK), .RSTB(n6), .Q(
        expo_01[2]) );
  DFFARX1_RVT \expo_01_reg[1]  ( .D(data_in_01[11]), .CLK(CLK), .RSTB(n6), .Q(
        expo_01[1]) );
  DFFARX1_RVT \expo_01_reg[0]  ( .D(data_in_01[10]), .CLK(CLK), .RSTB(n6), .Q(
        expo_01[0]) );
  DFFARX1_RVT \data_buffer_reg[0][15]  ( .D(data_in_03[15]), .CLK(CLK), .RSTB(
        n8), .Q(\data_buffer[0][15] ) );
  DFFX1_RVT \data_buffer_reg[1][15]  ( .D(n75), .CLK(CLK), .Q(n17) );
  DFFX1_RVT \data_buffer_reg[2][15]  ( .D(n74), .CLK(CLK), .Q(data_out_03[15])
         );
  DFFARX1_RVT \data_buffer_reg[0][14]  ( .D(data_in_03[14]), .CLK(CLK), .RSTB(
        n8), .Q(\data_buffer[0][14] ) );
  DFFX1_RVT \data_buffer_reg[1][14]  ( .D(n73), .CLK(CLK), .Q(n18) );
  DFFX1_RVT \data_buffer_reg[2][14]  ( .D(n72), .CLK(CLK), .Q(data_out_03[14])
         );
  DFFARX1_RVT \data_buffer_reg[0][13]  ( .D(data_in_03[13]), .CLK(CLK), .RSTB(
        n8), .Q(\data_buffer[0][13] ) );
  DFFX1_RVT \data_buffer_reg[1][13]  ( .D(n71), .CLK(CLK), .Q(n19) );
  DFFX1_RVT \data_buffer_reg[2][13]  ( .D(n70), .CLK(CLK), .Q(data_out_03[13])
         );
  DFFARX1_RVT \data_buffer_reg[0][12]  ( .D(data_in_03[12]), .CLK(CLK), .RSTB(
        n8), .Q(\data_buffer[0][12] ) );
  DFFX1_RVT \data_buffer_reg[1][12]  ( .D(n69), .CLK(CLK), .Q(n20) );
  DFFX1_RVT \data_buffer_reg[2][12]  ( .D(n68), .CLK(CLK), .Q(data_out_03[12])
         );
  DFFARX1_RVT \data_buffer_reg[0][11]  ( .D(data_in_03[11]), .CLK(CLK), .RSTB(
        n8), .Q(\data_buffer[0][11] ) );
  DFFX1_RVT \data_buffer_reg[1][11]  ( .D(n67), .CLK(CLK), .Q(n21) );
  DFFX1_RVT \data_buffer_reg[2][11]  ( .D(n66), .CLK(CLK), .Q(data_out_03[11])
         );
  DFFARX1_RVT \data_buffer_reg[0][10]  ( .D(data_in_03[10]), .CLK(CLK), .RSTB(
        n9), .Q(\data_buffer[0][10] ) );
  DFFX1_RVT \data_buffer_reg[1][10]  ( .D(n65), .CLK(CLK), .Q(n28) );
  DFFX1_RVT \data_buffer_reg[2][10]  ( .D(n64), .CLK(CLK), .Q(data_out_03[10])
         );
  DFFARX1_RVT \data_buffer_reg[0][9]  ( .D(data_in_03[9]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][9] ) );
  DFFX1_RVT \data_buffer_reg[1][9]  ( .D(n63), .CLK(CLK), .Q(n29) );
  DFFX1_RVT \data_buffer_reg[2][9]  ( .D(n62), .CLK(CLK), .Q(data_out_03[9])
         );
  DFFARX1_RVT \data_buffer_reg[0][8]  ( .D(data_in_03[8]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][8] ) );
  DFFX1_RVT \data_buffer_reg[1][8]  ( .D(n61), .CLK(CLK), .Q(n30) );
  DFFX1_RVT \data_buffer_reg[2][8]  ( .D(n60), .CLK(CLK), .Q(data_out_03[8])
         );
  DFFARX1_RVT \data_buffer_reg[0][7]  ( .D(data_in_03[7]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][7] ) );
  DFFX1_RVT \data_buffer_reg[1][7]  ( .D(n59), .CLK(CLK), .Q(n31) );
  DFFX1_RVT \data_buffer_reg[2][7]  ( .D(n58), .CLK(CLK), .Q(data_out_03[7])
         );
  DFFARX1_RVT \data_buffer_reg[0][6]  ( .D(data_in_03[6]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][6] ) );
  DFFX1_RVT \data_buffer_reg[1][6]  ( .D(n57), .CLK(CLK), .Q(n32) );
  DFFX1_RVT \data_buffer_reg[2][6]  ( .D(n56), .CLK(CLK), .Q(data_out_03[6])
         );
  DFFARX1_RVT \data_buffer_reg[0][5]  ( .D(data_in_03[5]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][5] ) );
  DFFX1_RVT \data_buffer_reg[1][5]  ( .D(n55), .CLK(CLK), .Q(n33) );
  DFFX1_RVT \data_buffer_reg[2][5]  ( .D(n54), .CLK(CLK), .Q(data_out_03[5])
         );
  DFFARX1_RVT \data_buffer_reg[0][4]  ( .D(data_in_03[4]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][4] ) );
  DFFX1_RVT \data_buffer_reg[1][4]  ( .D(n53), .CLK(CLK), .Q(n34) );
  DFFX1_RVT \data_buffer_reg[2][4]  ( .D(n52), .CLK(CLK), .Q(data_out_03[4])
         );
  DFFARX1_RVT \data_buffer_reg[0][3]  ( .D(data_in_03[3]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][3] ) );
  DFFX1_RVT \data_buffer_reg[1][3]  ( .D(n51), .CLK(CLK), .Q(n35) );
  DFFX1_RVT \data_buffer_reg[2][3]  ( .D(n50), .CLK(CLK), .Q(data_out_03[3])
         );
  DFFARX1_RVT \data_buffer_reg[0][2]  ( .D(data_in_03[2]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][2] ) );
  DFFX1_RVT \data_buffer_reg[1][2]  ( .D(n49), .CLK(CLK), .Q(n36) );
  DFFX1_RVT \data_buffer_reg[2][2]  ( .D(n48), .CLK(CLK), .Q(data_out_03[2])
         );
  DFFARX1_RVT \data_buffer_reg[0][1]  ( .D(data_in_03[1]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][1] ) );
  DFFX1_RVT \data_buffer_reg[1][1]  ( .D(n47), .CLK(CLK), .Q(n37) );
  DFFX1_RVT \data_buffer_reg[2][1]  ( .D(n46), .CLK(CLK), .Q(data_out_03[1])
         );
  DFFARX1_RVT \data_buffer_reg[0][0]  ( .D(data_in_03[0]), .CLK(CLK), .RSTB(n9), .Q(\data_buffer[0][0] ) );
  DFFX1_RVT \data_buffer_reg[1][0]  ( .D(n45), .CLK(CLK), .Q(n38) );
  DFFX1_RVT \data_buffer_reg[2][0]  ( .D(n44), .CLK(CLK), .Q(data_out_03[0])
         );
  AO22X1_RVT U3 ( .A1(n5), .A2(n38), .A3(n16), .A4(data_out_03[0]), .Y(n44) );
  AO22X1_RVT U4 ( .A1(n4), .A2(\data_buffer[0][0] ), .A3(n14), .A4(n38), .Y(
        n45) );
  AO22X1_RVT U6 ( .A1(n5), .A2(n37), .A3(n16), .A4(data_out_03[1]), .Y(n46) );
  AO22X1_RVT U7 ( .A1(n5), .A2(\data_buffer[0][1] ), .A3(n14), .A4(n37), .Y(
        n47) );
  AO22X1_RVT U9 ( .A1(n5), .A2(n36), .A3(n16), .A4(data_out_03[2]), .Y(n48) );
  AO22X1_RVT U10 ( .A1(n5), .A2(\data_buffer[0][2] ), .A3(n14), .A4(n36), .Y(
        n49) );
  AO22X1_RVT U12 ( .A1(n5), .A2(n35), .A3(n14), .A4(data_out_03[3]), .Y(n50)
         );
  AO22X1_RVT U13 ( .A1(n5), .A2(\data_buffer[0][3] ), .A3(n13), .A4(n35), .Y(
        n51) );
  AO22X1_RVT U15 ( .A1(n5), .A2(n34), .A3(n13), .A4(data_out_03[4]), .Y(n52)
         );
  AO22X1_RVT U16 ( .A1(n2), .A2(\data_buffer[0][4] ), .A3(n13), .A4(n34), .Y(
        n53) );
  AO22X1_RVT U18 ( .A1(n3), .A2(n33), .A3(n13), .A4(data_out_03[5]), .Y(n54)
         );
  AO22X1_RVT U19 ( .A1(n4), .A2(\data_buffer[0][5] ), .A3(n13), .A4(n33), .Y(
        n55) );
  AO22X1_RVT U21 ( .A1(n2), .A2(n32), .A3(n13), .A4(data_out_03[6]), .Y(n56)
         );
  AO22X1_RVT U22 ( .A1(n3), .A2(\data_buffer[0][6] ), .A3(n13), .A4(n32), .Y(
        n57) );
  AO22X1_RVT U24 ( .A1(n4), .A2(n31), .A3(n14), .A4(data_out_03[7]), .Y(n58)
         );
  AO22X1_RVT U25 ( .A1(n2), .A2(\data_buffer[0][7] ), .A3(n14), .A4(n31), .Y(
        n59) );
  AO22X1_RVT U27 ( .A1(n3), .A2(n30), .A3(n14), .A4(data_out_03[8]), .Y(n60)
         );
  AO22X1_RVT U28 ( .A1(n4), .A2(\data_buffer[0][8] ), .A3(n14), .A4(n30), .Y(
        n61) );
  AO22X1_RVT U30 ( .A1(n2), .A2(n29), .A3(n14), .A4(data_out_03[9]), .Y(n62)
         );
  AO22X1_RVT U31 ( .A1(n3), .A2(\data_buffer[0][9] ), .A3(n14), .A4(n29), .Y(
        n63) );
  AO22X1_RVT U33 ( .A1(n4), .A2(n28), .A3(n14), .A4(data_out_03[10]), .Y(n64)
         );
  AO22X1_RVT U34 ( .A1(n2), .A2(\data_buffer[0][10] ), .A3(n15), .A4(n28), .Y(
        n65) );
  AO22X1_RVT U36 ( .A1(n3), .A2(n21), .A3(n15), .A4(data_out_03[11]), .Y(n66)
         );
  AO22X1_RVT U37 ( .A1(n4), .A2(\data_buffer[0][11] ), .A3(n15), .A4(n21), .Y(
        n67) );
  AO22X1_RVT U39 ( .A1(n2), .A2(n20), .A3(n15), .A4(data_out_03[12]), .Y(n68)
         );
  AO22X1_RVT U40 ( .A1(n3), .A2(\data_buffer[0][12] ), .A3(n15), .A4(n20), .Y(
        n69) );
  AO22X1_RVT U42 ( .A1(n4), .A2(n19), .A3(n15), .A4(data_out_03[13]), .Y(n70)
         );
  AO22X1_RVT U43 ( .A1(n2), .A2(\data_buffer[0][13] ), .A3(n15), .A4(n19), .Y(
        n71) );
  AO22X1_RVT U45 ( .A1(n3), .A2(n18), .A3(n16), .A4(data_out_03[14]), .Y(n72)
         );
  AO22X1_RVT U46 ( .A1(n4), .A2(\data_buffer[0][14] ), .A3(n16), .A4(n18), .Y(
        n73) );
  AO22X1_RVT U48 ( .A1(n2), .A2(n17), .A3(n16), .A4(data_out_03[15]), .Y(n74)
         );
  AO22X1_RVT U49 ( .A1(n3), .A2(\data_buffer[0][15] ), .A3(n16), .A4(n17), .Y(
        n75) );
  AND2X1_RVT U52 ( .A1(N28), .A2(n22), .Y(N46) );
  AND2X1_RVT U53 ( .A1(N27), .A2(n22), .Y(N45) );
  AND2X1_RVT U54 ( .A1(N26), .A2(n22), .Y(N44) );
  AND2X1_RVT U55 ( .A1(N25), .A2(n22), .Y(N43) );
  AND2X1_RVT U56 ( .A1(N24), .A2(n22), .Y(N42) );
  AND2X1_RVT U57 ( .A1(N23), .A2(n22), .Y(N41) );
  AND2X1_RVT U58 ( .A1(N22), .A2(n22), .Y(N40) );
  AND2X1_RVT U59 ( .A1(N21), .A2(n22), .Y(N39) );
  AND2X1_RVT U60 ( .A1(N20), .A2(n22), .Y(N38) );
  AND2X1_RVT U61 ( .A1(N19), .A2(n22), .Y(N37) );
  AND2X1_RVT U62 ( .A1(N18), .A2(n22), .Y(N36) );
  AND2X1_RVT U63 ( .A1(N17), .A2(n22), .Y(N35) );
  AND2X1_RVT U64 ( .A1(N16), .A2(n22), .Y(N34) );
  AND2X1_RVT U65 ( .A1(N15), .A2(n22), .Y(N33) );
  AND2X1_RVT U66 ( .A1(N14), .A2(n22), .Y(N32) );
  AND2X1_RVT U67 ( .A1(N13), .A2(n22), .Y(N31) );
  AND2X1_RVT U68 ( .A1(N12), .A2(n22), .Y(N30) );
  AND2X1_RVT U69 ( .A1(n22), .A2(n23), .Y(N29) );
  OR3X1_RVT U72 ( .A1(expo_02[1]), .A2(expo_02[0]), .A3(n26), .Y(n25) );
  OR3X1_RVT U73 ( .A1(expo_02[4]), .A2(expo_02[3]), .A3(expo_02[2]), .Y(n26)
         );
  OR3X1_RVT U74 ( .A1(expo_01[1]), .A2(expo_01[0]), .A3(n27), .Y(n24) );
  OR3X1_RVT U75 ( .A1(expo_01[4]), .A2(expo_01[3]), .A3(expo_01[2]), .Y(n27)
         );
  floating_mul_16_DW01_add_0 add_0_root_sub_0_root_sub_79 ( .A({1'b0, 1'b0, 
        expo_01}), .B({n1, n1, \sub_1_root_sub_0_root_sub_79/DIFF[4] , 
        \sub_1_root_sub_0_root_sub_79/DIFF[3] , 
        \sub_1_root_sub_0_root_sub_79/DIFF[2] , 
        \sub_1_root_sub_0_root_sub_79/DIFF[1] , n39}), .CI(1'b0), .SUM({N18, 
        N17, N16, N15, N14, N13, N12}) );
  floating_mul_16_DW_mult_uns_0 mult_80 ( .a(frac_01), .b(frac_02), .product({
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
  DFFARX1_RVT sign_temp_out_reg ( .D(sign_temp_in), .CLK(CLK), .RSTB(n12), .Q(
        sign_out) );
  DFFARX1_RVT \frac_temp_out_reg[9]  ( .D(frac_temp_in[19]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[9]) );
  DFFARX1_RVT \frac_temp_out_reg[8]  ( .D(frac_temp_in[18]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[8]) );
  DFFARX1_RVT \frac_temp_out_reg[7]  ( .D(frac_temp_in[17]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[7]) );
  DFFARX1_RVT \frac_temp_out_reg[6]  ( .D(frac_temp_in[16]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[6]) );
  DFFARX1_RVT \frac_temp_out_reg[5]  ( .D(frac_temp_in[15]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[5]) );
  DFFARX1_RVT \frac_temp_out_reg[4]  ( .D(frac_temp_in[14]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[4]) );
  DFFARX1_RVT \frac_temp_out_reg[3]  ( .D(frac_temp_in[13]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[3]) );
  DFFARX1_RVT \frac_temp_out_reg[2]  ( .D(frac_temp_in[12]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[2]) );
  DFFARX1_RVT \frac_temp_out_reg[1]  ( .D(frac_temp_in[11]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[1]) );
  DFFARX1_RVT \frac_temp_out_reg[0]  ( .D(frac_temp_in[10]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[0]) );
  DFFARX1_RVT \expo_temp_out_reg[6]  ( .D(expo_temp_in[6]), .CLK(CLK), .RSTB(
        n11), .Q(data_out[16]) );
  DFFARX1_RVT \expo_temp_out_reg[5]  ( .D(expo_temp_in[5]), .CLK(CLK), .RSTB(
        n11), .Q(data_out[15]) );
  DFFARX1_RVT \expo_temp_out_reg[4]  ( .D(expo_temp_in[4]), .CLK(CLK), .RSTB(
        n11), .Q(data_out[14]) );
  DFFARX1_RVT \expo_temp_out_reg[3]  ( .D(expo_temp_in[3]), .CLK(CLK), .RSTB(
        n11), .Q(data_out[13]) );
  DFFARX1_RVT \expo_temp_out_reg[2]  ( .D(expo_temp_in[2]), .CLK(CLK), .RSTB(
        n11), .Q(data_out[12]) );
  DFFARX1_RVT \expo_temp_out_reg[1]  ( .D(expo_temp_in[1]), .CLK(CLK), .RSTB(
        n11), .Q(data_out[11]) );
  DFFARX1_RVT \expo_temp_out_reg[0]  ( .D(expo_temp_in[0]), .CLK(CLK), .RSTB(
        n12), .Q(data_out[10]) );
  DFFARX1_RVT sign_temp_in_reg ( .D(N29), .CLK(CLK), .RSTB(n10), .Q(
        sign_temp_in) );
  DFFARX1_RVT \expo_temp_in_reg[0]  ( .D(N30), .CLK(CLK), .RSTB(n11), .Q(
        expo_temp_in[0]) );
  DFFARX1_RVT \expo_temp_in_reg[1]  ( .D(N31), .CLK(CLK), .RSTB(n11), .Q(
        expo_temp_in[1]) );
  DFFARX1_RVT \expo_temp_in_reg[2]  ( .D(N32), .CLK(CLK), .RSTB(n11), .Q(
        expo_temp_in[2]) );
  DFFARX1_RVT \expo_temp_in_reg[3]  ( .D(N33), .CLK(CLK), .RSTB(n11), .Q(
        expo_temp_in[3]) );
  DFFARX1_RVT \expo_temp_in_reg[4]  ( .D(N34), .CLK(CLK), .RSTB(n11), .Q(
        expo_temp_in[4]) );
  DFFARX1_RVT \expo_temp_in_reg[5]  ( .D(N35), .CLK(CLK), .RSTB(n11), .Q(
        expo_temp_in[5]) );
  DFFARX1_RVT \expo_temp_in_reg[6]  ( .D(N36), .CLK(CLK), .RSTB(n10), .Q(
        expo_temp_in[6]) );
  DFFARX1_RVT \frac_temp_in_reg[10]  ( .D(N37), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[10]) );
  DFFARX1_RVT \frac_temp_in_reg[11]  ( .D(N38), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[11]) );
  DFFARX1_RVT \frac_temp_in_reg[12]  ( .D(N39), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[12]) );
  DFFARX1_RVT \frac_temp_in_reg[13]  ( .D(N40), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[13]) );
  DFFARX1_RVT \frac_temp_in_reg[14]  ( .D(N41), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[14]) );
  DFFARX1_RVT \frac_temp_in_reg[15]  ( .D(N42), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[15]) );
  DFFARX1_RVT \frac_temp_in_reg[16]  ( .D(N43), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[16]) );
  DFFARX1_RVT \frac_temp_in_reg[17]  ( .D(N44), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[17]) );
  DFFARX1_RVT \frac_temp_in_reg[19]  ( .D(N46), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[19]) );
  DFFARX1_RVT \frac_temp_in_reg[18]  ( .D(N45), .CLK(CLK), .RSTB(n10), .Q(
        frac_temp_in[18]) );
  DFFARX1_RVT sign_02_reg ( .D(data_in_02[15]), .CLK(CLK), .RSTB(n6), .Q(
        sign_02) );
  DFFARX1_RVT sign_01_reg ( .D(data_in_01[15]), .CLK(CLK), .RSTB(n9), .Q(
        sign_01) );
  DFFARX1_RVT \frac_02_reg[9]  ( .D(data_in_02[9]), .CLK(CLK), .RSTB(n7), .Q(
        frac_02[9]) );
  DFFARX1_RVT \frac_02_reg[8]  ( .D(data_in_02[8]), .CLK(CLK), .RSTB(n7), .Q(
        frac_02[8]) );
  DFFARX1_RVT \frac_02_reg[7]  ( .D(data_in_02[7]), .CLK(CLK), .RSTB(n7), .Q(
        frac_02[7]) );
  DFFARX1_RVT \frac_02_reg[6]  ( .D(data_in_02[6]), .CLK(CLK), .RSTB(n8), .Q(
        frac_02[6]) );
  DFFARX1_RVT \frac_02_reg[5]  ( .D(data_in_02[5]), .CLK(CLK), .RSTB(n8), .Q(
        frac_02[5]) );
  DFFARX1_RVT \frac_02_reg[4]  ( .D(data_in_02[4]), .CLK(CLK), .RSTB(n8), .Q(
        frac_02[4]) );
  DFFARX1_RVT \frac_02_reg[3]  ( .D(data_in_02[3]), .CLK(CLK), .RSTB(n8), .Q(
        frac_02[3]) );
  DFFARX1_RVT \frac_02_reg[2]  ( .D(data_in_02[2]), .CLK(CLK), .RSTB(n8), .Q(
        frac_02[2]) );
  DFFARX1_RVT \frac_02_reg[1]  ( .D(data_in_02[1]), .CLK(CLK), .RSTB(n8), .Q(
        frac_02[1]) );
  DFFARX1_RVT \frac_02_reg[0]  ( .D(data_in_02[0]), .CLK(CLK), .RSTB(n8), .Q(
        frac_02[0]) );
  DFFARX1_RVT \frac_01_reg[9]  ( .D(data_in_01[9]), .CLK(CLK), .RSTB(n6), .Q(
        frac_01[9]) );
  DFFARX1_RVT \frac_01_reg[8]  ( .D(data_in_01[8]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[8]) );
  DFFARX1_RVT \frac_01_reg[7]  ( .D(data_in_01[7]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[7]) );
  DFFARX1_RVT \frac_01_reg[6]  ( .D(data_in_01[6]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[6]) );
  DFFARX1_RVT \frac_01_reg[5]  ( .D(data_in_01[5]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[5]) );
  DFFARX1_RVT \frac_01_reg[4]  ( .D(data_in_01[4]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[4]) );
  DFFARX1_RVT \frac_01_reg[3]  ( .D(data_in_01[3]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[3]) );
  DFFARX1_RVT \frac_01_reg[2]  ( .D(data_in_01[2]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[2]) );
  DFFARX1_RVT \frac_01_reg[1]  ( .D(data_in_01[1]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[1]) );
  DFFARX1_RVT \frac_01_reg[0]  ( .D(data_in_01[0]), .CLK(CLK), .RSTB(n7), .Q(
        frac_01[0]) );
  DFFARX1_RVT \expo_02_reg[4]  ( .D(data_in_02[14]), .CLK(CLK), .RSTB(n6), .Q(
        expo_02[4]) );
  DFFARX1_RVT \expo_02_reg[3]  ( .D(data_in_02[13]), .CLK(CLK), .RSTB(n6), .Q(
        expo_02[3]) );
  DFFARX1_RVT \expo_02_reg[2]  ( .D(data_in_02[12]), .CLK(CLK), .RSTB(n6), .Q(
        expo_02[2]) );
  DFFARX1_RVT \expo_02_reg[1]  ( .D(data_in_02[11]), .CLK(CLK), .RSTB(n6), .Q(
        expo_02[1]) );
  DFFARX1_RVT \expo_02_reg[0]  ( .D(data_in_02[10]), .CLK(CLK), .RSTB(n6), .Q(
        expo_02[0]), .QN(n39) );
  DFFARX1_RVT \expo_01_reg[4]  ( .D(data_in_01[14]), .CLK(CLK), .RSTB(n6), .Q(
        expo_01[4]) );
  DFFARX1_RVT \expo_01_reg[3]  ( .D(data_in_01[13]), .CLK(CLK), .RSTB(n6), .Q(
        expo_01[3]) );
  NOR2X1_RVT U5 ( .A1(expo_02[4]), .A2(\sub_1_root_sub_0_root_sub_79/carry[4] ), .Y(n1) );
  INVX1_RVT U8 ( .A(n16), .Y(n7) );
  INVX1_RVT U11 ( .A(n16), .Y(n6) );
  INVX1_RVT U14 ( .A(n14), .Y(n11) );
  INVX1_RVT U17 ( .A(n16), .Y(n10) );
  INVX1_RVT U20 ( .A(n14), .Y(n9) );
  INVX1_RVT U23 ( .A(RESETn), .Y(n16) );
  INVX1_RVT U26 ( .A(n13), .Y(n5) );
  INVX1_RVT U29 ( .A(n13), .Y(n2) );
  INVX1_RVT U32 ( .A(n15), .Y(n3) );
  INVX1_RVT U35 ( .A(n15), .Y(n4) );
  INVX1_RVT U38 ( .A(n16), .Y(n12) );
  INVX1_RVT U41 ( .A(n16), .Y(n8) );
  INVX1_RVT U44 ( .A(RESETn), .Y(n13) );
  INVX1_RVT U47 ( .A(RESETn), .Y(n14) );
  INVX1_RVT U50 ( .A(RESETn), .Y(n15) );
  AND2X1_RVT U51 ( .A1(n24), .A2(n25), .Y(n22) );
  XOR2X1_RVT U70 ( .A1(sign_02), .A2(sign_01), .Y(n23) );
  XNOR2X1_RVT U71 ( .A1(\sub_1_root_sub_0_root_sub_79/carry[4] ), .A2(
        expo_02[4]), .Y(\sub_1_root_sub_0_root_sub_79/DIFF[4] ) );
  AND2X1_RVT U76 ( .A1(expo_02[3]), .A2(
        \sub_1_root_sub_0_root_sub_79/carry[3] ), .Y(
        \sub_1_root_sub_0_root_sub_79/carry[4] ) );
  XOR2X1_RVT U77 ( .A1(expo_02[3]), .A2(
        \sub_1_root_sub_0_root_sub_79/carry[3] ), .Y(
        \sub_1_root_sub_0_root_sub_79/DIFF[3] ) );
  AND2X1_RVT U78 ( .A1(expo_02[2]), .A2(
        \sub_1_root_sub_0_root_sub_79/carry[2] ), .Y(
        \sub_1_root_sub_0_root_sub_79/carry[3] ) );
  XOR2X1_RVT U79 ( .A1(expo_02[2]), .A2(
        \sub_1_root_sub_0_root_sub_79/carry[2] ), .Y(
        \sub_1_root_sub_0_root_sub_79/DIFF[2] ) );
  AND2X1_RVT U80 ( .A1(expo_02[1]), .A2(expo_02[0]), .Y(
        \sub_1_root_sub_0_root_sub_79/carry[2] ) );
  XOR2X1_RVT U81 ( .A1(expo_02[1]), .A2(expo_02[0]), .Y(
        \sub_1_root_sub_0_root_sub_79/DIFF[1] ) );
endmodule


module floating_add_16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;

  wire   [10:1] carry;

  FADDX1_RVT U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(SUM[10]), .S(SUM[9]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  XOR2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  AND2X1_RVT U2 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
endmodule


module floating_add_16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;

  wire   [10:1] carry;

  FADDX1_RVT U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(SUM[10]), .S(SUM[9]) );
  FADDX1_RVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  FADDX1_RVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  FADDX1_RVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  FADDX1_RVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  FADDX1_RVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  FADDX1_RVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  FADDX1_RVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  FADDX1_RVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(
        SUM[1]) );
  XOR2X1_RVT U1 ( .A1(A[0]), .A2(B[0]), .Y(SUM[0]) );
  AND2X1_RVT U2 ( .A1(A[0]), .A2(B[0]), .Y(carry[1]) );
endmodule


module floating_add_16_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[9]), .A2(A[9]), .Y(SUM[9]) );
endmodule


module floating_add_16_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HADDX1_RVT U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1_RVT U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1_RVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1_RVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_RVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_RVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_RVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_RVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX1_RVT U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1_RVT U2 ( .A1(carry[9]), .A2(A[9]), .Y(SUM[9]) );
endmodule


module floating_add_16 ( CLK, RESETn, sign_in, data_in_01, data_in_02, 
        data_out );
  input [16:0] data_in_01;
  input [15:0] data_in_02;
  output [15:0] data_out;
  input CLK, RESETn, sign_in;
  wire   sign_01, sign_02, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, sign_temp, N72, N75, N76, N77, N78, N79, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N103, N104, N105, N106, N107, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146,
         N147, N170, N171, N172, N173, N174, N175, N176, N177, N178, N179,
         N180, N181, N182, N183, N184, N185, N186, N187, n32, n33, n34, n35,
         n36, n37, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N50, N49,
         N48, N47, N46, N45, N44, N43, N42, N41, \sub_161/carry[5] ,
         \sub_161/carry[4] , \sub_161/carry[3] , \sub_161/carry[2] ,
         \sub_161/carry[1] , \sub_157/carry[5] , \sub_157/carry[4] ,
         \sub_157/carry[3] , \sub_157/carry[2] , \sub_157/carry[1] , n2, n3,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118;
  wire   [6:0] expo_01;
  wire   [6:0] expo_02;
  wire   [9:0] frac_01;
  wire   [9:0] frac_02;
  wire   [6:0] expo_temp_in;
  wire   [10:0] frac_temp_in;

  DFFARX1_RVT sign_01_reg ( .D(sign_in), .CLK(CLK), .RSTB(n28), .Q(sign_01), 
        .QN(n32) );
  DFFARX1_RVT sign_02_reg ( .D(data_in_02[15]), .CLK(CLK), .RSTB(n29), .Q(
        sign_02), .QN(n33) );
  DFFARX1_RVT \frac_temp_in_reg[10]  ( .D(N147), .CLK(CLK), .RSTB(n31), .Q(
        frac_temp_in[10]), .QN(n34) );
  DFFARX1_RVT \expo_temp_out_reg[5]  ( .D(N175), .CLK(CLK), .RSTB(n38), .QN(
        n17) );
  DFFARX1_RVT \expo_temp_out_reg[6]  ( .D(N176), .CLK(CLK), .RSTB(n39), .QN(
        n16) );
  AO22X1_RVT U17 ( .A1(data_in_02[9]), .A2(n33), .A3(N60), .A4(sign_02), .Y(
        N70) );
  AO22X1_RVT U18 ( .A1(data_in_02[8]), .A2(n33), .A3(N59), .A4(sign_02), .Y(
        N69) );
  AO22X1_RVT U19 ( .A1(data_in_02[7]), .A2(n33), .A3(N58), .A4(sign_02), .Y(
        N68) );
  AO22X1_RVT U20 ( .A1(data_in_02[6]), .A2(n33), .A3(N57), .A4(sign_02), .Y(
        N67) );
  AO22X1_RVT U21 ( .A1(data_in_02[5]), .A2(n33), .A3(N56), .A4(sign_02), .Y(
        N66) );
  AO22X1_RVT U22 ( .A1(data_in_02[4]), .A2(n33), .A3(N55), .A4(sign_02), .Y(
        N65) );
  AO22X1_RVT U23 ( .A1(data_in_02[3]), .A2(n33), .A3(N54), .A4(sign_02), .Y(
        N64) );
  AO22X1_RVT U24 ( .A1(data_in_02[2]), .A2(n33), .A3(N53), .A4(sign_02), .Y(
        N63) );
  AO22X1_RVT U25 ( .A1(data_in_02[1]), .A2(n33), .A3(N52), .A4(sign_02), .Y(
        N62) );
  AO22X1_RVT U26 ( .A1(data_in_02[0]), .A2(n33), .A3(N51), .A4(sign_02), .Y(
        N61) );
  AO22X1_RVT U27 ( .A1(data_in_01[9]), .A2(n32), .A3(N29), .A4(sign_01), .Y(
        N39) );
  AO22X1_RVT U28 ( .A1(data_in_01[8]), .A2(n32), .A3(N28), .A4(sign_01), .Y(
        N38) );
  AO22X1_RVT U29 ( .A1(data_in_01[7]), .A2(n32), .A3(N27), .A4(sign_01), .Y(
        N37) );
  AO22X1_RVT U30 ( .A1(data_in_01[6]), .A2(n32), .A3(N26), .A4(sign_01), .Y(
        N36) );
  AO22X1_RVT U31 ( .A1(data_in_01[5]), .A2(n32), .A3(N25), .A4(sign_01), .Y(
        N35) );
  AO22X1_RVT U32 ( .A1(data_in_01[4]), .A2(n32), .A3(N24), .A4(sign_01), .Y(
        N34) );
  AO22X1_RVT U33 ( .A1(data_in_01[3]), .A2(n32), .A3(N23), .A4(sign_01), .Y(
        N33) );
  AO22X1_RVT U34 ( .A1(data_in_01[2]), .A2(n32), .A3(N22), .A4(sign_01), .Y(
        N32) );
  AO22X1_RVT U35 ( .A1(data_in_01[1]), .A2(n32), .A3(N21), .A4(sign_01), .Y(
        N31) );
  AO22X1_RVT U36 ( .A1(data_in_01[0]), .A2(n32), .A3(N20), .A4(sign_01), .Y(
        N30) );
  AND2X1_RVT U37 ( .A1(sign_temp), .A2(n35), .Y(N187) );
  AND2X1_RVT U38 ( .A1(frac_temp_in[9]), .A2(n35), .Y(N186) );
  AND2X1_RVT U39 ( .A1(frac_temp_in[8]), .A2(n35), .Y(N185) );
  AND2X1_RVT U40 ( .A1(frac_temp_in[7]), .A2(n35), .Y(N184) );
  AND2X1_RVT U41 ( .A1(frac_temp_in[6]), .A2(n35), .Y(N183) );
  AND2X1_RVT U42 ( .A1(frac_temp_in[5]), .A2(n35), .Y(N182) );
  AND2X1_RVT U43 ( .A1(frac_temp_in[4]), .A2(n35), .Y(N181) );
  AND2X1_RVT U44 ( .A1(frac_temp_in[3]), .A2(n35), .Y(N180) );
  AND2X1_RVT U45 ( .A1(frac_temp_in[2]), .A2(n35), .Y(N179) );
  AND2X1_RVT U46 ( .A1(frac_temp_in[1]), .A2(n35), .Y(N178) );
  AND2X1_RVT U47 ( .A1(frac_temp_in[0]), .A2(n35), .Y(N177) );
  AO22X1_RVT U49 ( .A1(n36), .A2(expo_temp_in[5]), .A3(expo_temp_in[4]), .A4(
        n37), .Y(N175) );
  AO22X1_RVT U50 ( .A1(expo_temp_in[4]), .A2(n36), .A3(expo_temp_in[3]), .A4(
        n37), .Y(N174) );
  AO22X1_RVT U51 ( .A1(expo_temp_in[3]), .A2(n36), .A3(expo_temp_in[2]), .A4(
        n37), .Y(N173) );
  AO22X1_RVT U52 ( .A1(expo_temp_in[2]), .A2(n36), .A3(expo_temp_in[1]), .A4(
        n37), .Y(N172) );
  AO22X1_RVT U53 ( .A1(expo_temp_in[1]), .A2(n36), .A3(expo_temp_in[0]), .A4(
        n37), .Y(N171) );
  AND2X1_RVT U54 ( .A1(frac_temp_in[10]), .A2(n35), .Y(n37) );
  AND2X1_RVT U55 ( .A1(expo_temp_in[0]), .A2(n36), .Y(N170) );
  AND2X1_RVT U56 ( .A1(n35), .A2(n34), .Y(n36) );
  AO22X1_RVT U58 ( .A1(N129), .A2(n15), .A3(N72), .A4(N101), .Y(N147) );
  AO22X1_RVT U59 ( .A1(N128), .A2(n15), .A3(N100), .A4(N72), .Y(N146) );
  AO22X1_RVT U60 ( .A1(N99), .A2(N72), .A3(N127), .A4(n15), .Y(N145) );
  AO22X1_RVT U61 ( .A1(N98), .A2(N72), .A3(N126), .A4(n15), .Y(N144) );
  AO22X1_RVT U62 ( .A1(N97), .A2(N72), .A3(N125), .A4(n15), .Y(N143) );
  AO22X1_RVT U63 ( .A1(N96), .A2(N72), .A3(N124), .A4(n15), .Y(N142) );
  AO22X1_RVT U64 ( .A1(N95), .A2(N72), .A3(N123), .A4(n15), .Y(N141) );
  AO22X1_RVT U65 ( .A1(N94), .A2(N72), .A3(N122), .A4(n15), .Y(N140) );
  AO22X1_RVT U66 ( .A1(N93), .A2(N72), .A3(N121), .A4(n15), .Y(N139) );
  AO22X1_RVT U67 ( .A1(N92), .A2(N72), .A3(N120), .A4(n15), .Y(N138) );
  AO22X1_RVT U68 ( .A1(N91), .A2(N72), .A3(N119), .A4(n15), .Y(N137) );
  AO22X1_RVT U70 ( .A1(expo_01[4]), .A2(N72), .A3(expo_02[4]), .A4(n15), .Y(
        N134) );
  AO22X1_RVT U71 ( .A1(expo_01[3]), .A2(N72), .A3(expo_02[3]), .A4(n15), .Y(
        N133) );
  AO22X1_RVT U72 ( .A1(expo_01[2]), .A2(N72), .A3(expo_02[2]), .A4(n15), .Y(
        N132) );
  AO22X1_RVT U73 ( .A1(expo_01[1]), .A2(N72), .A3(expo_02[1]), .A4(n15), .Y(
        N131) );
  AO22X1_RVT U74 ( .A1(expo_01[0]), .A2(N72), .A3(expo_02[0]), .A4(n15), .Y(
        N130) );
  floating_add_16_DW01_add_0 add_161 ( .A({1'b0, frac_02}), .B({1'b0, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109}), .CI(1'b0), 
        .SUM({N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119}) );
  floating_add_16_DW01_add_1 add_157 ( .A({1'b0, frac_01}), .B({1'b0, N90, N89, 
        N88, N87, N86, N85, N84, N83, N82, N81}), .CI(1'b0), .SUM({N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91}) );
  floating_add_16_DW01_inc_0 add_0_root_add_138_ni ( .A({N10, N11, N12, N13, 
        N14, N15, N16, N17, N18, N19}), .SUM({N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20}) );
  floating_add_16_DW01_inc_1 add_0_root_add_143_ni ( .A({N41, N42, N43, N44, 
        N45, N46, N47, N48, N49, N50}), .SUM({N60, N59, N58, N57, N56, N55, 
        N54, N53, N52, N51}) );
  FADDX1_RVT \sub_161/U2_1  ( .A(expo_02[1]), .B(n46), .CI(\sub_161/carry[1] ), 
        .CO(\sub_161/carry[2] ), .S(N103) );
  FADDX1_RVT \sub_161/U2_2  ( .A(expo_02[2]), .B(n47), .CI(\sub_161/carry[2] ), 
        .CO(\sub_161/carry[3] ), .S(N104) );
  FADDX1_RVT \sub_161/U2_3  ( .A(expo_02[3]), .B(n48), .CI(\sub_161/carry[3] ), 
        .CO(\sub_161/carry[4] ), .S(N105) );
  FADDX1_RVT \sub_161/U2_4  ( .A(expo_02[4]), .B(n49), .CI(\sub_161/carry[4] ), 
        .CO(\sub_161/carry[5] ), .S(N106) );
  FADDX1_RVT \sub_157/U2_1  ( .A(expo_01[1]), .B(n41), .CI(\sub_157/carry[1] ), 
        .CO(\sub_157/carry[2] ), .S(N75) );
  FADDX1_RVT \sub_157/U2_2  ( .A(expo_01[2]), .B(n42), .CI(\sub_157/carry[2] ), 
        .CO(\sub_157/carry[3] ), .S(N76) );
  FADDX1_RVT \sub_157/U2_3  ( .A(expo_01[3]), .B(n43), .CI(\sub_157/carry[3] ), 
        .CO(\sub_157/carry[4] ), .S(N77) );
  FADDX1_RVT \sub_157/U2_4  ( .A(expo_01[4]), .B(n44), .CI(\sub_157/carry[4] ), 
        .CO(\sub_157/carry[5] ), .S(N78) );
  DFFARX1_RVT \expo_02_reg[4]  ( .D(data_in_02[14]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_02[4]), .QN(n44) );
  DFFARX1_RVT \expo_02_reg[3]  ( .D(data_in_02[13]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_02[3]), .QN(n43) );
  DFFARX1_RVT \expo_02_reg[2]  ( .D(data_in_02[12]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_02[2]), .QN(n42) );
  DFFARX1_RVT \expo_02_reg[1]  ( .D(data_in_02[11]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_02[1]), .QN(n41) );
  DFFARX1_RVT \expo_02_reg[0]  ( .D(data_in_02[10]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_02[0]), .QN(n40) );
  DFFARX1_RVT \expo_01_reg[5]  ( .D(data_in_01[15]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_01[5]), .QN(n50) );
  DFFARX1_RVT \expo_01_reg[4]  ( .D(data_in_01[14]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_01[4]), .QN(n49) );
  DFFARX1_RVT \expo_01_reg[3]  ( .D(data_in_01[13]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_01[3]), .QN(n48) );
  DFFARX1_RVT \expo_01_reg[2]  ( .D(data_in_01[12]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_01[2]), .QN(n47) );
  DFFARX1_RVT \expo_01_reg[1]  ( .D(data_in_01[11]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_01[1]), .QN(n46) );
  DFFARX1_RVT \expo_01_reg[0]  ( .D(data_in_01[10]), .CLK(CLK), .RSTB(n28), 
        .Q(expo_01[0]), .QN(n45) );
  DFFARX1_RVT \frac_02_reg[0]  ( .D(N61), .CLK(CLK), .RSTB(n29), .Q(frac_02[0]) );
  DFFARX1_RVT sign_out_reg ( .D(N187), .CLK(CLK), .RSTB(n38), .Q(data_out[15])
         );
  DFFARX1_RVT \frac_temp_out_reg[9]  ( .D(N186), .CLK(CLK), .RSTB(n38), .Q(
        data_out[9]) );
  DFFARX1_RVT \frac_temp_out_reg[8]  ( .D(N185), .CLK(CLK), .RSTB(n38), .Q(
        data_out[8]) );
  DFFARX1_RVT \frac_temp_out_reg[7]  ( .D(N184), .CLK(CLK), .RSTB(n38), .Q(
        data_out[7]) );
  DFFARX1_RVT \frac_temp_out_reg[6]  ( .D(N183), .CLK(CLK), .RSTB(n38), .Q(
        data_out[6]) );
  DFFARX1_RVT \frac_temp_out_reg[5]  ( .D(N182), .CLK(CLK), .RSTB(n38), .Q(
        data_out[5]) );
  DFFARX1_RVT \frac_temp_out_reg[4]  ( .D(N181), .CLK(CLK), .RSTB(n38), .Q(
        data_out[4]) );
  DFFARX1_RVT \frac_temp_out_reg[3]  ( .D(N180), .CLK(CLK), .RSTB(n38), .Q(
        data_out[3]) );
  DFFARX1_RVT \frac_temp_out_reg[2]  ( .D(N179), .CLK(CLK), .RSTB(n39), .Q(
        data_out[2]) );
  DFFARX1_RVT \frac_temp_out_reg[1]  ( .D(N178), .CLK(CLK), .RSTB(n39), .Q(
        data_out[1]) );
  DFFARX1_RVT \frac_temp_out_reg[0]  ( .D(N177), .CLK(CLK), .RSTB(n39), .Q(
        data_out[0]) );
  DFFARX1_RVT \frac_01_reg[0]  ( .D(N30), .CLK(CLK), .RSTB(n30), .Q(frac_01[0]) );
  DFFARX1_RVT \frac_02_reg[1]  ( .D(N62), .CLK(CLK), .RSTB(n29), .Q(frac_02[1]) );
  DFFARX1_RVT sign_temp_reg ( .D(N71), .CLK(CLK), .RSTB(n30), .Q(sign_temp) );
  DFFARX1_RVT \expo_temp_out_reg[0]  ( .D(N170), .CLK(CLK), .RSTB(n39), .Q(
        data_out[10]) );
  DFFARX1_RVT \frac_01_reg[1]  ( .D(N31), .CLK(CLK), .RSTB(n30), .Q(frac_01[1]) );
  DFFARX1_RVT \expo_temp_out_reg[4]  ( .D(N174), .CLK(CLK), .RSTB(n39), .Q(
        data_out[14]) );
  DFFARX1_RVT \expo_temp_out_reg[3]  ( .D(N173), .CLK(CLK), .RSTB(n39), .Q(
        data_out[13]) );
  DFFARX1_RVT \expo_temp_out_reg[2]  ( .D(N172), .CLK(CLK), .RSTB(n39), .Q(
        data_out[12]) );
  DFFARX1_RVT \expo_temp_out_reg[1]  ( .D(N171), .CLK(CLK), .RSTB(n39), .Q(
        data_out[11]) );
  DFFARX1_RVT \frac_02_reg[2]  ( .D(N63), .CLK(CLK), .RSTB(n29), .Q(frac_02[2]) );
  DFFARX1_RVT \frac_01_reg[2]  ( .D(N32), .CLK(CLK), .RSTB(n30), .Q(frac_01[2]) );
  DFFARX1_RVT \frac_02_reg[3]  ( .D(N64), .CLK(CLK), .RSTB(n29), .Q(frac_02[3]) );
  DFFARX1_RVT \frac_01_reg[3]  ( .D(N33), .CLK(CLK), .RSTB(n30), .Q(frac_01[3]) );
  DFFARX1_RVT \frac_02_reg[4]  ( .D(N65), .CLK(CLK), .RSTB(n29), .Q(frac_02[4]) );
  DFFARX1_RVT \frac_01_reg[4]  ( .D(N34), .CLK(CLK), .RSTB(n30), .Q(frac_01[4]) );
  DFFARX1_RVT \frac_02_reg[5]  ( .D(N66), .CLK(CLK), .RSTB(n29), .Q(frac_02[5]) );
  DFFARX1_RVT \frac_01_reg[5]  ( .D(N35), .CLK(CLK), .RSTB(n30), .Q(frac_01[5]) );
  DFFARX1_RVT \frac_02_reg[6]  ( .D(N67), .CLK(CLK), .RSTB(n29), .Q(frac_02[6]) );
  DFFARX1_RVT \frac_01_reg[6]  ( .D(N36), .CLK(CLK), .RSTB(n30), .Q(frac_01[6]) );
  DFFARX1_RVT \expo_temp_in_reg[5]  ( .D(expo_01[5]), .CLK(CLK), .RSTB(n30), 
        .Q(expo_temp_in[5]) );
  DFFARX1_RVT \frac_02_reg[7]  ( .D(N68), .CLK(CLK), .RSTB(n29), .Q(frac_02[7]) );
  DFFARX1_RVT \frac_01_reg[7]  ( .D(N37), .CLK(CLK), .RSTB(n30), .Q(frac_01[7]) );
  DFFARX1_RVT \frac_02_reg[8]  ( .D(N69), .CLK(CLK), .RSTB(n29), .Q(frac_02[8]) );
  DFFARX1_RVT \expo_temp_in_reg[4]  ( .D(N134), .CLK(CLK), .RSTB(n30), .Q(
        expo_temp_in[4]) );
  DFFARX1_RVT \expo_temp_in_reg[3]  ( .D(N133), .CLK(CLK), .RSTB(n31), .Q(
        expo_temp_in[3]) );
  DFFARX1_RVT \expo_temp_in_reg[2]  ( .D(N132), .CLK(CLK), .RSTB(n31), .Q(
        expo_temp_in[2]) );
  DFFARX1_RVT \expo_temp_in_reg[1]  ( .D(N131), .CLK(CLK), .RSTB(n31), .Q(
        expo_temp_in[1]) );
  DFFARX1_RVT \expo_temp_in_reg[0]  ( .D(N130), .CLK(CLK), .RSTB(n31), .Q(
        expo_temp_in[0]) );
  DFFARX1_RVT \frac_01_reg[8]  ( .D(N38), .CLK(CLK), .RSTB(n30), .Q(frac_01[8]) );
  DFFARX1_RVT \frac_02_reg[9]  ( .D(N70), .CLK(CLK), .RSTB(n29), .Q(frac_02[9]) );
  DFFARX1_RVT \frac_01_reg[9]  ( .D(N39), .CLK(CLK), .RSTB(n29), .Q(frac_01[9]) );
  DFFARX1_RVT \frac_temp_in_reg[0]  ( .D(N137), .CLK(CLK), .RSTB(n38), .Q(
        frac_temp_in[0]) );
  DFFARX1_RVT \frac_temp_in_reg[1]  ( .D(N138), .CLK(CLK), .RSTB(n38), .Q(
        frac_temp_in[1]) );
  DFFARX1_RVT \frac_temp_in_reg[2]  ( .D(N139), .CLK(CLK), .RSTB(n38), .Q(
        frac_temp_in[2]) );
  DFFARX1_RVT \frac_temp_in_reg[3]  ( .D(N140), .CLK(CLK), .RSTB(n31), .Q(
        frac_temp_in[3]) );
  DFFARX1_RVT \frac_temp_in_reg[4]  ( .D(N141), .CLK(CLK), .RSTB(n31), .Q(
        frac_temp_in[4]) );
  DFFARX1_RVT \frac_temp_in_reg[5]  ( .D(N142), .CLK(CLK), .RSTB(n31), .Q(
        frac_temp_in[5]) );
  DFFARX1_RVT \frac_temp_in_reg[6]  ( .D(N143), .CLK(CLK), .RSTB(n31), .Q(
        frac_temp_in[6]) );
  DFFARX1_RVT \frac_temp_in_reg[7]  ( .D(N144), .CLK(CLK), .RSTB(n31), .Q(
        frac_temp_in[7]) );
  DFFARX1_RVT \frac_temp_in_reg[8]  ( .D(N145), .CLK(CLK), .RSTB(n31), .Q(
        frac_temp_in[8]) );
  DFFARX1_RVT \frac_temp_in_reg[9]  ( .D(N146), .CLK(CLK), .RSTB(n31), .Q(
        frac_temp_in[9]) );
  INVX1_RVT U3 ( .A(n26), .Y(n108) );
  INVX1_RVT U4 ( .A(n27), .Y(n81) );
  MUX21X1_RVT U5 ( .A1(n19), .A2(n101), .S0(n65), .Y(n111) );
  XOR2X1_RVT U6 ( .A1(n45), .A2(expo_02[0]), .Y(n2) );
  XOR2X1_RVT U8 ( .A1(n40), .A2(expo_01[0]), .Y(n3) );
  NOR2X1_RVT U9 ( .A1(expo_01[5]), .A2(\sub_157/carry[5] ), .Y(n5) );
  NAND2X0_RVT U11 ( .A1(n50), .A2(\sub_161/carry[5] ), .Y(n6) );
  MUX21X1_RVT U12 ( .A1(n84), .A2(n12), .S0(N76), .Y(n85) );
  MUX21X1_RVT U13 ( .A1(n67), .A2(n84), .S0(N76), .Y(n68) );
  INVX1_RVT U14 ( .A(n109), .Y(n21) );
  INVX1_RVT U15 ( .A(n107), .Y(n23) );
  MUX21X1_RVT U16 ( .A1(n75), .A2(n74), .S0(n62), .Y(n7) );
  INVX1_RVT U48 ( .A(n24), .Y(n88) );
  INVX1_RVT U57 ( .A(n80), .Y(n25) );
  MUX21X1_RVT U69 ( .A1(n102), .A2(n19), .S0(n65), .Y(n8) );
  INVX1_RVT U75 ( .A(N103), .Y(n65) );
  NOR3X0_RVT U76 ( .A1(n6), .A2(N107), .A3(N106), .Y(n118) );
  INVX1_RVT U77 ( .A(N75), .Y(n62) );
  AND2X1_RVT U78 ( .A1(n108), .A2(n65), .Y(n9) );
  AND2X1_RVT U79 ( .A1(n81), .A2(n62), .Y(n10) );
  AND2X1_RVT U80 ( .A1(n102), .A2(n65), .Y(n11) );
  AND2X1_RVT U81 ( .A1(n75), .A2(n62), .Y(n12) );
  MUX21X1_RVT U82 ( .A1(n103), .A2(n8), .S0(N104), .Y(n104) );
  MUX21X1_RVT U83 ( .A1(n79), .A2(n78), .S0(n62), .Y(n82) );
  MUX21X1_RVT U84 ( .A1(frac_02[4]), .A2(frac_02[3]), .S0(n3), .Y(n78) );
  MUX21X1_RVT U85 ( .A1(frac_02[6]), .A2(frac_02[5]), .S0(n3), .Y(n79) );
  MUX21X1_RVT U86 ( .A1(n86), .A2(n10), .S0(N76), .Y(n87) );
  INVX1_RVT U87 ( .A(n20), .Y(n110) );
  MUX21X1_RVT U88 ( .A1(n97), .A2(n113), .S0(N104), .Y(n98) );
  MUX21X1_RVT U89 ( .A1(n80), .A2(n18), .S0(n62), .Y(n86) );
  MUX21X1_RVT U90 ( .A1(n78), .A2(n70), .S0(n62), .Y(n71) );
  MUX21X1_RVT U91 ( .A1(frac_02[3]), .A2(frac_02[2]), .S0(n3), .Y(n13) );
  MUX21X1_RVT U92 ( .A1(frac_02[5]), .A2(frac_02[4]), .S0(n3), .Y(n14) );
  INVX1_RVT U93 ( .A(n22), .Y(n115) );
  NOR3X0_RVT U94 ( .A1(n5), .A2(N79), .A3(N78), .Y(n91) );
  OAI22X1_RVT U95 ( .A1(n59), .A2(n58), .A3(n44), .A4(n57), .Y(n15) );
  INVX1_RVT U96 ( .A(n15), .Y(N72) );
  AND2X1_RVT U97 ( .A1(n16), .A2(n17), .Y(n35) );
  XNOR2X1_RVT U98 ( .A1(n33), .A2(sign_01), .Y(N71) );
  NBUFFX2_RVT U99 ( .A(RESETn), .Y(n38) );
  NBUFFX2_RVT U100 ( .A(RESETn), .Y(n31) );
  NBUFFX2_RVT U101 ( .A(RESETn), .Y(n30) );
  NBUFFX2_RVT U102 ( .A(RESETn), .Y(n29) );
  NBUFFX2_RVT U103 ( .A(RESETn), .Y(n28) );
  NBUFFX2_RVT U104 ( .A(RESETn), .Y(n39) );
  MUX21X1_RVT U105 ( .A1(frac_02[6]), .A2(frac_02[5]), .S0(n3), .Y(n18) );
  MUX21X1_RVT U106 ( .A1(frac_01[7]), .A2(frac_01[6]), .S0(n2), .Y(n19) );
  MUX21X1_RVT U107 ( .A1(n22), .A2(n21), .S0(n64), .Y(n20) );
  MUX21X1_RVT U108 ( .A1(n26), .A2(n23), .S0(n65), .Y(n22) );
  MUX21X1_RVT U109 ( .A1(n27), .A2(n25), .S0(n62), .Y(n24) );
  NAND2X0_RVT U110 ( .A1(frac_01[9]), .A2(n2), .Y(n26) );
  NAND2X0_RVT U111 ( .A1(frac_02[9]), .A2(n3), .Y(n27) );
  XNOR2X1_RVT U112 ( .A1(\sub_157/carry[5] ), .A2(expo_01[5]), .Y(N79) );
  OR2X1_RVT U113 ( .A1(expo_01[0]), .A2(n40), .Y(\sub_157/carry[1] ) );
  XOR2X1_RVT U114 ( .A1(n50), .A2(\sub_161/carry[5] ), .Y(N107) );
  OR2X1_RVT U115 ( .A1(expo_02[0]), .A2(n45), .Y(\sub_161/carry[1] ) );
  INVX1_RVT U116 ( .A(data_in_02[0]), .Y(N50) );
  INVX1_RVT U117 ( .A(data_in_02[1]), .Y(N49) );
  INVX1_RVT U118 ( .A(data_in_02[2]), .Y(N48) );
  INVX1_RVT U119 ( .A(data_in_02[3]), .Y(N47) );
  INVX1_RVT U120 ( .A(data_in_02[4]), .Y(N46) );
  INVX1_RVT U121 ( .A(data_in_02[5]), .Y(N45) );
  INVX1_RVT U122 ( .A(data_in_02[6]), .Y(N44) );
  INVX1_RVT U123 ( .A(data_in_02[7]), .Y(N43) );
  INVX1_RVT U124 ( .A(data_in_02[8]), .Y(N42) );
  INVX1_RVT U125 ( .A(data_in_02[9]), .Y(N41) );
  INVX1_RVT U126 ( .A(data_in_01[0]), .Y(N19) );
  INVX1_RVT U127 ( .A(data_in_01[1]), .Y(N18) );
  INVX1_RVT U128 ( .A(data_in_01[2]), .Y(N17) );
  INVX1_RVT U129 ( .A(data_in_01[3]), .Y(N16) );
  INVX1_RVT U130 ( .A(data_in_01[4]), .Y(N15) );
  INVX1_RVT U131 ( .A(data_in_01[5]), .Y(N14) );
  INVX1_RVT U132 ( .A(data_in_01[6]), .Y(N13) );
  INVX1_RVT U133 ( .A(data_in_01[7]), .Y(N12) );
  INVX1_RVT U134 ( .A(data_in_01[8]), .Y(N11) );
  INVX1_RVT U135 ( .A(data_in_01[9]), .Y(N10) );
  AO21X1_RVT U136 ( .A1(expo_01[4]), .A2(n44), .A3(expo_01[5]), .Y(n59) );
  AND2X1_RVT U137 ( .A1(expo_01[3]), .A2(n43), .Y(n52) );
  OR2X1_RVT U138 ( .A1(n52), .A2(expo_01[2]), .Y(n51) );
  OA22X1_RVT U139 ( .A1(expo_01[3]), .A2(n43), .A3(n42), .A4(n51), .Y(n56) );
  AO21X1_RVT U140 ( .A1(expo_01[2]), .A2(n42), .A3(n52), .Y(n55) );
  AO22X1_RVT U141 ( .A1(expo_01[0]), .A2(n40), .A3(expo_01[1]), .A4(n41), .Y(
        n53) );
  OA21X1_RVT U142 ( .A1(expo_01[1]), .A2(n41), .A3(n53), .Y(n54) );
  AO22X1_RVT U143 ( .A1(n56), .A2(n55), .A3(n54), .A4(n56), .Y(n58) );
  OR2X1_RVT U144 ( .A1(expo_01[4]), .A2(expo_01[5]), .Y(n57) );
  INVX1_RVT U145 ( .A(N77), .Y(n60) );
  INVX1_RVT U146 ( .A(N76), .Y(n61) );
  INVX1_RVT U147 ( .A(N105), .Y(n63) );
  INVX1_RVT U148 ( .A(N104), .Y(n64) );
  MUX21X1_RVT U149 ( .A1(frac_02[1]), .A2(frac_02[0]), .S0(n3), .Y(n66) );
  MUX21X1_RVT U150 ( .A1(n13), .A2(n66), .S0(n62), .Y(n67) );
  MUX21X1_RVT U151 ( .A1(frac_02[7]), .A2(frac_02[6]), .S0(n3), .Y(n74) );
  MUX21X1_RVT U152 ( .A1(n74), .A2(n14), .S0(n62), .Y(n84) );
  MUX21X1_RVT U153 ( .A1(frac_02[9]), .A2(frac_02[8]), .S0(n3), .Y(n75) );
  AND2X1_RVT U154 ( .A1(n12), .A2(n61), .Y(n89) );
  MUX21X1_RVT U155 ( .A1(n68), .A2(n89), .S0(N77), .Y(n69) );
  AND2X1_RVT U156 ( .A1(n69), .A2(n91), .Y(N81) );
  MUX21X1_RVT U157 ( .A1(frac_02[2]), .A2(frac_02[1]), .S0(n3), .Y(n70) );
  MUX21X1_RVT U158 ( .A1(frac_02[8]), .A2(frac_02[7]), .S0(n3), .Y(n80) );
  MUX21X1_RVT U159 ( .A1(n71), .A2(n86), .S0(N76), .Y(n72) );
  AND2X1_RVT U160 ( .A1(n10), .A2(n61), .Y(n90) );
  MUX21X1_RVT U161 ( .A1(n72), .A2(n90), .S0(N77), .Y(n73) );
  AND2X1_RVT U162 ( .A1(n73), .A2(n91), .Y(N82) );
  MUX21X1_RVT U163 ( .A1(n14), .A2(n13), .S0(n62), .Y(n76) );
  MUX21X1_RVT U164 ( .A1(n76), .A2(n7), .S0(N76), .Y(n77) );
  AND3X1_RVT U165 ( .A1(n91), .A2(n60), .A3(n77), .Y(N83) );
  MUX21X1_RVT U166 ( .A1(n82), .A2(n88), .S0(N76), .Y(n83) );
  AND3X1_RVT U167 ( .A1(n91), .A2(n60), .A3(n83), .Y(N84) );
  AND3X1_RVT U168 ( .A1(n91), .A2(n60), .A3(n85), .Y(N85) );
  AND3X1_RVT U169 ( .A1(n91), .A2(n60), .A3(n87), .Y(N86) );
  AND4X1_RVT U170 ( .A1(n91), .A2(n7), .A3(n61), .A4(n60), .Y(N87) );
  AND4X1_RVT U171 ( .A1(n91), .A2(n88), .A3(n61), .A4(n60), .Y(N88) );
  AND3X1_RVT U172 ( .A1(n91), .A2(n60), .A3(n89), .Y(N89) );
  AND3X1_RVT U173 ( .A1(n91), .A2(n60), .A3(n90), .Y(N90) );
  MUX21X1_RVT U174 ( .A1(frac_01[3]), .A2(frac_01[2]), .S0(n2), .Y(n100) );
  MUX21X1_RVT U175 ( .A1(frac_01[1]), .A2(frac_01[0]), .S0(n2), .Y(n92) );
  MUX21X1_RVT U176 ( .A1(n100), .A2(n92), .S0(n65), .Y(n93) );
  MUX21X1_RVT U177 ( .A1(frac_01[5]), .A2(frac_01[4]), .S0(n2), .Y(n101) );
  MUX21X1_RVT U178 ( .A1(n93), .A2(n111), .S0(N104), .Y(n94) );
  MUX21X1_RVT U179 ( .A1(frac_01[9]), .A2(frac_01[8]), .S0(n2), .Y(n102) );
  AND2X1_RVT U180 ( .A1(n11), .A2(n64), .Y(n116) );
  MUX21X1_RVT U181 ( .A1(n94), .A2(n116), .S0(N105), .Y(n95) );
  AND2X1_RVT U182 ( .A1(n95), .A2(n118), .Y(N109) );
  MUX21X1_RVT U183 ( .A1(frac_01[4]), .A2(frac_01[3]), .S0(n2), .Y(n105) );
  MUX21X1_RVT U184 ( .A1(frac_01[2]), .A2(frac_01[1]), .S0(n2), .Y(n96) );
  MUX21X1_RVT U185 ( .A1(n105), .A2(n96), .S0(n65), .Y(n97) );
  MUX21X1_RVT U186 ( .A1(frac_01[8]), .A2(frac_01[7]), .S0(n2), .Y(n107) );
  MUX21X1_RVT U187 ( .A1(frac_01[6]), .A2(frac_01[5]), .S0(n2), .Y(n106) );
  MUX21X1_RVT U188 ( .A1(n107), .A2(n106), .S0(n65), .Y(n113) );
  AND2X1_RVT U189 ( .A1(n9), .A2(n64), .Y(n117) );
  MUX21X1_RVT U190 ( .A1(n98), .A2(n117), .S0(N105), .Y(n99) );
  AND2X1_RVT U191 ( .A1(n99), .A2(n118), .Y(N110) );
  MUX21X1_RVT U192 ( .A1(n101), .A2(n100), .S0(n65), .Y(n103) );
  AND3X1_RVT U193 ( .A1(n118), .A2(n63), .A3(n104), .Y(N111) );
  MUX21X1_RVT U194 ( .A1(n106), .A2(n105), .S0(n65), .Y(n109) );
  AND3X1_RVT U195 ( .A1(n118), .A2(n63), .A3(n110), .Y(N112) );
  MUX21X1_RVT U196 ( .A1(n111), .A2(n11), .S0(N104), .Y(n112) );
  AND3X1_RVT U197 ( .A1(n118), .A2(n63), .A3(n112), .Y(N113) );
  MUX21X1_RVT U198 ( .A1(n113), .A2(n9), .S0(N104), .Y(n114) );
  AND3X1_RVT U199 ( .A1(n118), .A2(n63), .A3(n114), .Y(N114) );
  AND4X1_RVT U200 ( .A1(n118), .A2(n8), .A3(n64), .A4(n63), .Y(N115) );
  AND4X1_RVT U201 ( .A1(n118), .A2(n115), .A3(n64), .A4(n63), .Y(N116) );
  AND3X1_RVT U202 ( .A1(n118), .A2(n63), .A3(n116), .Y(N117) );
  AND3X1_RVT U203 ( .A1(n118), .A2(n63), .A3(n117), .Y(N118) );
  AND2X1_RVT U204 ( .A1(expo_temp_in[5]), .A2(n37), .Y(N176) );
endmodule


module floating_MAC_16 ( CLK, RESETn, data_in_A, data_in_B, data_in_C, 
        data_out );
  input [15:0] data_in_A;
  input [15:0] data_in_B;
  input [15:0] data_in_C;
  output [15:0] data_out;
  input CLK, RESETn;
  wire   sign;
  wire   [16:0] data_out_mul;
  wire   [15:0] data_out_C;

  floating_mul_16 MUL ( .CLK(CLK), .RESETn(RESETn), .data_in_01(data_in_A), 
        .data_in_02(data_in_B), .data_in_03(data_in_C), .sign_out(sign), 
        .data_out(data_out_mul), .data_out_03(data_out_C) );
  floating_add_16 ADD ( .CLK(CLK), .RESETn(RESETn), .sign_in(sign), 
        .data_in_01(data_out_mul), .data_in_02(data_out_C), .data_out(data_out) );
endmodule

