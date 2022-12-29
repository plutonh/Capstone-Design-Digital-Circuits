/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R) Graphical
// Version   : O-2018.06-SP4
// Date      : Wed Oct 26 12:37:12 2022
/////////////////////////////////////////////////////////////


module pipe_array_mult ( a, b, y, CLK, RESETn );
  input [3:0] a;
  input [3:0] b;
  output [7:0] y;
  input CLK, RESETn;
  wire   N4, N5, N6, N7, a_pipe_2__3_, a_pipe_1__3_, a_pipe_1__2_,
         a_pipe_0__3_, a_pipe_0__2_, a_pipe_0__1_, b_pipe_2__3_, b_pipe_2__2_,
         b_pipe_2__1_, b_pipe_2__0_, b_pipe_1__3_, b_pipe_1__2_, b_pipe_1__1_,
         b_pipe_1__0_, b_pipe_0__3_, b_pipe_0__2_, b_pipe_0__1_, b_pipe_0__0_,
         partials_2__6_, partials_2__5_, partials_2__4_, partials_2__3_,
         partials_1__5_, partials_1__4_, partials_1__3_, partials_1__2_,
         partials_0__3_, partials_0__2_, partials_0__1_, N12, N13, N14, N15,
         N16, N17, N24, N25, N26, N27, N28, N29, N30, N36, N37, N38, N39, N40,
         N41, N42, N43, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  DFFX1_RVT a_pipe_reg_0__3_ ( .D(a[3]), .CLK(CLK), .Q(a_pipe_0__3_) );
  DFFX1_RVT a_pipe_reg_1__3_ ( .D(a_pipe_0__3_), .CLK(CLK), .Q(a_pipe_1__3_)
         );
  DFFX1_RVT a_pipe_reg_2__3_ ( .D(a_pipe_1__3_), .CLK(CLK), .Q(a_pipe_2__3_)
         );
  DFFX1_RVT a_pipe_reg_0__2_ ( .D(a[2]), .CLK(CLK), .Q(a_pipe_0__2_) );
  DFFX1_RVT a_pipe_reg_1__2_ ( .D(a_pipe_0__2_), .CLK(CLK), .Q(a_pipe_1__2_)
         );
  DFFX1_RVT a_pipe_reg_0__1_ ( .D(a[1]), .CLK(CLK), .Q(a_pipe_0__1_) );
  DFFX1_RVT b_pipe_reg_0__3_ ( .D(b[3]), .CLK(CLK), .Q(b_pipe_0__3_) );
  DFFX1_RVT b_pipe_reg_1__3_ ( .D(b_pipe_0__3_), .CLK(CLK), .Q(b_pipe_1__3_)
         );
  DFFX1_RVT b_pipe_reg_2__3_ ( .D(b_pipe_1__3_), .CLK(CLK), .Q(b_pipe_2__3_)
         );
  DFFX1_RVT b_pipe_reg_0__2_ ( .D(b[2]), .CLK(CLK), .Q(b_pipe_0__2_) );
  DFFX1_RVT b_pipe_reg_1__2_ ( .D(b_pipe_0__2_), .CLK(CLK), .Q(b_pipe_1__2_)
         );
  DFFX1_RVT b_pipe_reg_2__2_ ( .D(b_pipe_1__2_), .CLK(CLK), .Q(b_pipe_2__2_)
         );
  DFFX1_RVT b_pipe_reg_0__1_ ( .D(b[1]), .CLK(CLK), .Q(b_pipe_0__1_) );
  DFFX1_RVT b_pipe_reg_1__1_ ( .D(b_pipe_0__1_), .CLK(CLK), .Q(b_pipe_1__1_)
         );
  DFFX1_RVT b_pipe_reg_2__1_ ( .D(b_pipe_1__1_), .CLK(CLK), .Q(b_pipe_2__1_)
         );
  DFFX1_RVT b_pipe_reg_0__0_ ( .D(b[0]), .CLK(CLK), .Q(b_pipe_0__0_) );
  DFFX1_RVT b_pipe_reg_1__0_ ( .D(b_pipe_0__0_), .CLK(CLK), .Q(b_pipe_1__0_)
         );
  DFFX1_RVT b_pipe_reg_2__0_ ( .D(b_pipe_1__0_), .CLK(CLK), .Q(b_pipe_2__0_)
         );
  DFFX1_RVT partials_reg_3__7_ ( .D(N43), .CLK(CLK), .Q(y[7]) );
  DFFX1_RVT partials_reg_3__6_ ( .D(N42), .CLK(CLK), .Q(y[6]) );
  DFFX1_RVT partials_reg_3__5_ ( .D(N41), .CLK(CLK), .Q(y[5]) );
  DFFX1_RVT partials_reg_3__4_ ( .D(N40), .CLK(CLK), .Q(y[4]) );
  DFFX1_RVT partials_reg_3__3_ ( .D(N39), .CLK(CLK), .Q(y[3]) );
  DFFX1_RVT partials_reg_3__2_ ( .D(N38), .CLK(CLK), .Q(y[2]) );
  DFFX1_RVT partials_reg_3__1_ ( .D(N37), .CLK(CLK), .Q(y[1]) );
  DFFX1_RVT partials_reg_3__0_ ( .D(N36), .CLK(CLK), .Q(y[0]) );
  DFFX1_RVT partials_reg_2__6_ ( .D(N30), .CLK(CLK), .Q(partials_2__6_) );
  DFFX1_RVT partials_reg_2__5_ ( .D(N29), .CLK(CLK), .Q(partials_2__5_) );
  DFFX1_RVT partials_reg_2__4_ ( .D(N28), .CLK(CLK), .Q(partials_2__4_) );
  DFFX1_RVT partials_reg_2__3_ ( .D(N27), .CLK(CLK), .Q(partials_2__3_) );
  DFFX1_RVT partials_reg_2__2_ ( .D(N26), .CLK(CLK), .Q(N38) );
  DFFX1_RVT partials_reg_2__1_ ( .D(N25), .CLK(CLK), .Q(N37) );
  DFFX1_RVT partials_reg_2__0_ ( .D(N24), .CLK(CLK), .Q(N36) );
  DFFX1_RVT partials_reg_1__5_ ( .D(N17), .CLK(CLK), .Q(partials_1__5_) );
  DFFX1_RVT partials_reg_1__4_ ( .D(N16), .CLK(CLK), .Q(partials_1__4_) );
  DFFX1_RVT partials_reg_1__3_ ( .D(N15), .CLK(CLK), .Q(partials_1__3_) );
  DFFX1_RVT partials_reg_1__2_ ( .D(N14), .CLK(CLK), .Q(partials_1__2_) );
  DFFX1_RVT partials_reg_1__1_ ( .D(N13), .CLK(CLK), .Q(N25) );
  DFFX1_RVT partials_reg_1__0_ ( .D(N12), .CLK(CLK), .Q(N24) );
  DFFX1_RVT partials_reg_0__3_ ( .D(N4), .CLK(CLK), .Q(partials_0__3_) );
  DFFX1_RVT partials_reg_0__2_ ( .D(N5), .CLK(CLK), .Q(partials_0__2_) );
  DFFX1_RVT partials_reg_0__1_ ( .D(N6), .CLK(CLK), .Q(partials_0__1_) );
  DFFX1_RVT partials_reg_0__0_ ( .D(N7), .CLK(CLK), .Q(N12) );
  NAND3X0_RVT U3 ( .A1(a_pipe_0__1_), .A2(b_pipe_0__0_), .A3(partials_0__1_), 
        .Y(n20) );
  INVX0_RVT U4 ( .A(n20), .Y(n22) );
  AND2X1_RVT U5 ( .A1(a_pipe_0__1_), .A2(b_pipe_0__1_), .Y(n21) );
  AND2X1_RVT U6 ( .A1(a_pipe_0__1_), .A2(b_pipe_0__2_), .Y(n23) );
  NAND2X0_RVT U7 ( .A1(n1), .A2(b_pipe_0__3_), .Y(n25) );
  AND2X1_RVT U8 ( .A1(n25), .A2(a_pipe_0__1_), .Y(n3) );
  OR2X1_RVT U9 ( .A1(b_pipe_0__3_), .A2(n1), .Y(n2) );
  AND2X1_RVT U10 ( .A1(n3), .A2(n2), .Y(N16) );
  AND2X1_RVT U11 ( .A1(a_pipe_2__3_), .A2(b_pipe_2__3_), .Y(n6) );
  AND2X1_RVT U12 ( .A1(a_pipe_2__3_), .A2(b_pipe_2__2_), .Y(n8) );
  NAND3X0_RVT U13 ( .A1(a_pipe_2__3_), .A2(b_pipe_2__0_), .A3(partials_2__3_), 
        .Y(n18) );
  INVX0_RVT U14 ( .A(n18), .Y(n10) );
  AND2X1_RVT U15 ( .A1(a_pipe_2__3_), .A2(b_pipe_2__1_), .Y(n9) );
  NBUFFX2_RVT U16 ( .A(n4), .Y(N43) );
  FADDX1_RVT U17 ( .A(n6), .B(partials_2__6_), .CI(n5), .CO(n4), .S(N42) );
  FADDX1_RVT U18 ( .A(n8), .B(partials_2__5_), .CI(n7), .CO(n5), .S(N41) );
  FADDX1_RVT U19 ( .A(n10), .B(partials_2__4_), .CI(n9), .CO(n7), .S(N40) );
  AND2X1_RVT U20 ( .A1(a_pipe_1__2_), .A2(b_pipe_1__3_), .Y(n13) );
  AND2X1_RVT U21 ( .A1(a_pipe_1__2_), .A2(b_pipe_1__2_), .Y(n15) );
  NAND3X0_RVT U22 ( .A1(a_pipe_1__2_), .A2(b_pipe_1__0_), .A3(partials_1__2_), 
        .Y(n19) );
  INVX0_RVT U23 ( .A(n19), .Y(n17) );
  AND2X1_RVT U24 ( .A1(a_pipe_1__2_), .A2(b_pipe_1__1_), .Y(n16) );
  NBUFFX2_RVT U25 ( .A(n11), .Y(N30) );
  FADDX1_RVT U26 ( .A(n13), .B(partials_1__5_), .CI(n12), .CO(n11), .S(N29) );
  FADDX1_RVT U27 ( .A(n15), .B(partials_1__4_), .CI(n14), .CO(n12), .S(N28) );
  FADDX1_RVT U28 ( .A(n17), .B(partials_1__3_), .CI(n16), .CO(n14), .S(N27) );
  AND2X1_RVT U29 ( .A1(a[0]), .A2(b[3]), .Y(N4) );
  AND2X1_RVT U30 ( .A1(a[0]), .A2(b[2]), .Y(N5) );
  AND2X1_RVT U31 ( .A1(a[0]), .A2(b[1]), .Y(N6) );
  AND2X1_RVT U32 ( .A1(a[0]), .A2(b[0]), .Y(N7) );
  OA221X1_RVT U33 ( .A1(partials_2__3_), .A2(b_pipe_2__0_), .A3(partials_2__3_), .A4(a_pipe_2__3_), .A5(n18), .Y(N39) );
  OA221X1_RVT U34 ( .A1(partials_1__2_), .A2(b_pipe_1__0_), .A3(partials_1__2_), .A4(a_pipe_1__2_), .A5(n19), .Y(N26) );
  OA221X1_RVT U35 ( .A1(partials_0__1_), .A2(b_pipe_0__0_), .A3(partials_0__1_), .A4(a_pipe_0__1_), .A5(n20), .Y(N13) );
  FADDX1_RVT U36 ( .A(partials_0__2_), .B(n22), .CI(n21), .CO(n24), .S(N14) );
  FADDX1_RVT U37 ( .A(partials_0__3_), .B(n24), .CI(n23), .CO(n1), .S(N15) );
  INVX0_RVT U38 ( .A(n25), .Y(N17) );
endmodule


module TOP ( a, b, y, CLK, RESETn );
  input [3:0] a;
  input [3:0] b;
  output [7:0] y;
  input CLK, RESETn;


  pipe_array_mult PAM ( .a(a), .b(b), .y(y), .CLK(CLK), .RESETn(1'b0) );
endmodule

