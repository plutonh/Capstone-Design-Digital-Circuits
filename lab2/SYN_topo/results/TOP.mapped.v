/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R) Graphical
// Version   : O-2018.06-SP4
// Date      : Mon Oct  3 17:19:28 2022
/////////////////////////////////////////////////////////////


module no_pipeline ( a, b, c, d, RESETn, CLK, y );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  output [7:0] y;
  input RESETn, CLK;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  DFFARX1_RVT y_reg_7_ ( .D(N16), .CLK(CLK), .RSTB(RESETn), .Q(y[7]) );
  DFFARX1_RVT y_reg_6_ ( .D(N15), .CLK(CLK), .RSTB(RESETn), .Q(y[6]) );
  DFFARX1_RVT y_reg_5_ ( .D(N14), .CLK(CLK), .RSTB(RESETn), .Q(y[5]) );
  DFFARX1_RVT y_reg_4_ ( .D(N13), .CLK(CLK), .RSTB(RESETn), .Q(y[4]) );
  DFFARX1_RVT y_reg_3_ ( .D(N12), .CLK(CLK), .RSTB(RESETn), .Q(y[3]) );
  DFFARX1_RVT y_reg_2_ ( .D(N11), .CLK(CLK), .RSTB(RESETn), .Q(y[2]) );
  DFFARX1_RVT y_reg_1_ ( .D(N10), .CLK(CLK), .RSTB(RESETn), .Q(y[1]) );
  DFFARX1_RVT y_reg_0_ ( .D(N9), .CLK(CLK), .RSTB(RESETn), .Q(y[0]) );
  NAND2X0_RVT U3 ( .A1(b[0]), .A2(a[0]), .Y(n1) );
  OA21X1_RVT U4 ( .A1(b[0]), .A2(a[0]), .A3(n1), .Y(n45) );
  NAND2X0_RVT U5 ( .A1(d[0]), .A2(c[0]), .Y(n2) );
  OA21X1_RVT U6 ( .A1(d[0]), .A2(c[0]), .A3(n2), .Y(n48) );
  AND2X1_RVT U7 ( .A1(n45), .A2(n48), .Y(N9) );
  INVX0_RVT U8 ( .A(n1), .Y(n4) );
  INVX0_RVT U9 ( .A(n2), .Y(n6) );
  AND2X1_RVT U10 ( .A1(n47), .A2(n31), .Y(n14) );
  FADDX1_RVT U11 ( .A(c[2]), .B(d[2]), .CI(n3), .CO(n30), .S(n31) );
  FADDX1_RVT U12 ( .A(a[1]), .B(b[1]), .CI(n4), .CO(n7), .S(n47) );
  NAND3X0_RVT U13 ( .A1(N9), .A2(n30), .A3(n32), .Y(n15) );
  AO22X1_RVT U14 ( .A1(n45), .A2(n30), .A3(n48), .A4(n32), .Y(n5) );
  AND2X1_RVT U15 ( .A1(n15), .A2(n5), .Y(n13) );
  FADDX1_RVT U16 ( .A(c[1]), .B(d[1]), .CI(n6), .CO(n3), .S(n44) );
  FADDX1_RVT U17 ( .A(a[2]), .B(b[2]), .CI(n7), .CO(n32), .S(n29) );
  AND2X1_RVT U18 ( .A1(n44), .A2(n29), .Y(n12) );
  NAND3X0_RVT U19 ( .A1(n45), .A2(n44), .A3(n14), .Y(n8) );
  INVX0_RVT U20 ( .A(n8), .Y(n19) );
  AND2X1_RVT U21 ( .A1(n44), .A2(n47), .Y(n16) );
  OA221X1_RVT U22 ( .A1(n16), .A2(n31), .A3(n16), .A4(n45), .A5(n8), .Y(n11)
         );
  NAND2X0_RVT U23 ( .A1(N9), .A2(n16), .Y(n46) );
  INVX0_RVT U24 ( .A(n46), .Y(n10) );
  AND2X1_RVT U25 ( .A1(n48), .A2(n29), .Y(n9) );
  FADDX1_RVT U26 ( .A(n11), .B(n10), .CI(n9), .CO(n18), .S(N11) );
  FADDX1_RVT U27 ( .A(n14), .B(n13), .CI(n12), .CO(n26), .S(n20) );
  INVX0_RVT U28 ( .A(n15), .Y(n23) );
  AND2X1_RVT U29 ( .A1(n31), .A2(n29), .Y(n22) );
  AND2X1_RVT U30 ( .A1(n30), .A2(n32), .Y(n37) );
  NAND2X0_RVT U31 ( .A1(n37), .A2(n16), .Y(n28) );
  AO22X1_RVT U32 ( .A1(n30), .A2(n47), .A3(n32), .A4(n44), .Y(n17) );
  AND2X1_RVT U33 ( .A1(n28), .A2(n17), .Y(n21) );
  FADDX1_RVT U34 ( .A(n20), .B(n19), .CI(n18), .CO(n24), .S(N12) );
  FADDX1_RVT U35 ( .A(n23), .B(n22), .CI(n21), .CO(n43), .S(n25) );
  FADDX1_RVT U36 ( .A(n26), .B(n25), .CI(n24), .CO(n27), .S(N13) );
  NBUFFX2_RVT U37 ( .A(n27), .Y(n42) );
  INVX0_RVT U38 ( .A(n28), .Y(n35) );
  AND2X1_RVT U39 ( .A1(n30), .A2(n29), .Y(n34) );
  AND2X1_RVT U40 ( .A1(n32), .A2(n31), .Y(n33) );
  OA21X1_RVT U41 ( .A1(n43), .A2(n42), .A3(n41), .Y(n39) );
  FADDX1_RVT U42 ( .A(n35), .B(n34), .CI(n33), .CO(n36), .S(n41) );
  OA21X1_RVT U43 ( .A1(n39), .A2(n36), .A3(n37), .Y(N16) );
  INVX0_RVT U44 ( .A(n36), .Y(n38) );
  AND2X1_RVT U45 ( .A1(n38), .A2(n37), .Y(n40) );
  HADDX1_RVT U46 ( .A0(n40), .B0(n39), .SO(N15) );
  FADDX1_RVT U47 ( .A(n43), .B(n42), .CI(n41), .S(N14) );
  AND2X1_RVT U48 ( .A1(n45), .A2(n44), .Y(n49) );
  OA221X1_RVT U49 ( .A1(n49), .A2(n48), .A3(n49), .A4(n47), .A5(n46), .Y(N10)
         );
endmodule


module TOP ( a, b, c, d, CLK, RESETn, y );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  output [7:0] y;
  input CLK, RESETn;


  no_pipeline Np1 ( .a(a), .b(b), .c(c), .d(d), .RESETn(RESETn), .CLK(CLK), 
        .y(y) );
endmodule

