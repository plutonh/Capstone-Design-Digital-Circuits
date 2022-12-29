/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon Oct 31 15:59:08 2022
/////////////////////////////////////////////////////////////


module mul_A_bw4 ( CLK, RESETn, a, b, y );
  input [3:0] a;
  input [3:0] b;
  output [7:0] y;
  input CLK, RESETn;
  wire   \b_pipe[3][3] , \b_pipe[3][2] , \b_pipe[3][1] , \b_pipe[2][3] ,
         \b_pipe[2][2] , \b_pipe[2][1] , \b_pipe[2][0] , \b_pipe[1][3] ,
         \b_pipe[1][2] , \b_pipe[1][1] , \b_pipe[1][0] , \b_pipe[0][3] ,
         \b_pipe[0][2] , \b_pipe[0][1] , \b_pipe[0][0] , \a_pipe[2][3] ,
         \a_pipe[1][3] , \a_pipe[1][2] , \a_pipe[0][3] , \a_pipe[0][2] ,
         \a_pipe[0][1] , \a_pipe[0][0] , \partials[2][7] , \partials[2][6] ,
         \partials[2][5] , \partials[2][4] , \partials[2][3] ,
         \partials[1][5] , \partials[1][4] , \partials[1][3] ,
         \partials[1][2] , \partials[0][3] , \partials[0][2] ,
         \partials[0][1] , N29, N30, N31, N32, N33, N34, N40, N41, N42, N43,
         N57, N58, N59, N60, N61, N62, N63, N84, N85, N86, N87, N88, N89, N90,
         N91, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106;

  DFFSSRX1_RVT \b_pipe_reg[0][3]  ( .D(b[3]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\b_pipe[0][3] ) );
  DFFSSRX1_RVT \b_pipe_reg[0][2]  ( .D(b[2]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\b_pipe[0][2] ) );
  DFFSSRX1_RVT \b_pipe_reg[0][1]  ( .D(b[1]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\b_pipe[0][1] ) );
  DFFSSRX1_RVT \b_pipe_reg[0][0]  ( .D(b[0]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\b_pipe[0][0] ) );
  DFFSSRX1_RVT \a_pipe_reg[0][3]  ( .D(a[3]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\a_pipe[0][3] ) );
  DFFSSRX1_RVT \a_pipe_reg[0][2]  ( .D(a[2]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\a_pipe[0][2] ) );
  DFFSSRX1_RVT \a_pipe_reg[0][1]  ( .D(a[1]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\a_pipe[0][1] ) );
  DFFSSRX1_RVT \a_pipe_reg[0][0]  ( .D(a[0]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\a_pipe[0][0] ) );
  DFFSSRX1_RVT \partials_reg[0][3]  ( .D(\a_pipe[0][0] ), .SETB(1'b1), .RSTB(
        N43), .CLK(CLK), .Q(\partials[0][3] ) );
  DFFSSRX1_RVT \partials_reg[0][2]  ( .D(N42), .SETB(1'b1), .RSTB(
        \a_pipe[0][0] ), .CLK(CLK), .Q(\partials[0][2] ) );
  DFFSSRX1_RVT \partials_reg[0][1]  ( .D(N41), .SETB(1'b1), .RSTB(
        \a_pipe[0][0] ), .CLK(CLK), .Q(\partials[0][1] ) );
  DFFSSRX1_RVT \partials_reg[0][0]  ( .D(N40), .SETB(1'b1), .RSTB(
        \a_pipe[0][0] ), .CLK(CLK), .Q(N29) );
  DFFSSRX1_RVT \b_pipe_reg[1][3]  ( .D(\b_pipe[0][3] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[1][3] ) );
  DFFSSRX1_RVT \b_pipe_reg[1][2]  ( .D(\b_pipe[0][2] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[1][2] ) );
  DFFSSRX1_RVT \b_pipe_reg[1][1]  ( .D(\b_pipe[0][1] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[1][1] ) );
  DFFSSRX1_RVT \b_pipe_reg[1][0]  ( .D(\b_pipe[0][0] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[1][0] ) );
  DFFSSRX1_RVT \a_pipe_reg[1][3]  ( .D(\a_pipe[0][3] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\a_pipe[1][3] ) );
  DFFSSRX1_RVT \a_pipe_reg[1][2]  ( .D(\a_pipe[0][2] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\a_pipe[1][2] ) );
  DFFSSRX1_RVT \a_pipe_reg[1][1]  ( .D(\a_pipe[0][1] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(n64) );
  DFFSSRX1_RVT \partials_reg[1][5]  ( .D(N34), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[1][5] ) );
  DFFSSRX1_RVT \partials_reg[1][4]  ( .D(N33), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[1][4] ) );
  DFFSSRX1_RVT \partials_reg[1][3]  ( .D(N32), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[1][3] ) );
  DFFSSRX1_RVT \partials_reg[1][2]  ( .D(N31), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[1][2] ) );
  DFFSSRX1_RVT \partials_reg[1][1]  ( .D(N30), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(N58) );
  DFFSSRX1_RVT \partials_reg[1][0]  ( .D(N29), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(N57) );
  DFFSSRX1_RVT \b_pipe_reg[2][3]  ( .D(\b_pipe[1][3] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[2][3] ) );
  DFFSSRX1_RVT \b_pipe_reg[2][2]  ( .D(\b_pipe[1][2] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[2][2] ) );
  DFFSSRX1_RVT \b_pipe_reg[2][1]  ( .D(\b_pipe[1][1] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[2][1] ) );
  DFFSSRX1_RVT \b_pipe_reg[2][0]  ( .D(\b_pipe[1][0] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[2][0] ) );
  DFFSSRX1_RVT \a_pipe_reg[2][3]  ( .D(\a_pipe[1][3] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\a_pipe[2][3] ) );
  DFFSSRX1_RVT \a_pipe_reg[2][2]  ( .D(\a_pipe[1][2] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(n63) );
  DFFSSRX1_RVT \partials_reg[2][7]  ( .D(1'b0), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[2][7] ) );
  DFFSSRX1_RVT \partials_reg[2][6]  ( .D(N63), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[2][6] ) );
  DFFSSRX1_RVT \partials_reg[2][5]  ( .D(N62), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[2][5] ) );
  DFFSSRX1_RVT \partials_reg[2][4]  ( .D(N61), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[2][4] ) );
  DFFSSRX1_RVT \partials_reg[2][3]  ( .D(N60), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[2][3] ) );
  DFFSSRX1_RVT \partials_reg[2][2]  ( .D(N59), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(N86) );
  DFFSSRX1_RVT \partials_reg[2][1]  ( .D(N58), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(N85) );
  DFFSSRX1_RVT \partials_reg[2][0]  ( .D(N57), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(N84) );
  DFFSSRX1_RVT \b_pipe_reg[3][3]  ( .D(\b_pipe[2][3] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[3][3] ) );
  DFFSSRX1_RVT \b_pipe_reg[3][2]  ( .D(\b_pipe[2][2] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[3][2] ) );
  DFFSSRX1_RVT \b_pipe_reg[3][1]  ( .D(\b_pipe[2][1] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[3][1] ) );
  DFFSSRX1_RVT \b_pipe_reg[3][0]  ( .D(\b_pipe[2][0] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(n65) );
  DFFSSRX1_RVT \a_pipe_reg[3][3]  ( .D(\a_pipe[2][3] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(n62) );
  DFFSSRX1_RVT \partials_reg[3][7]  ( .D(N91), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[7]) );
  DFFSSRX1_RVT \partials_reg[3][6]  ( .D(N90), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[6]) );
  DFFSSRX1_RVT \partials_reg[3][5]  ( .D(N89), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[5]) );
  DFFSSRX1_RVT \partials_reg[3][4]  ( .D(N88), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[4]) );
  DFFSSRX1_RVT \partials_reg[3][3]  ( .D(N87), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[3]) );
  DFFSSRX1_RVT \partials_reg[3][2]  ( .D(RESETn), .SETB(1'b1), .RSTB(N86), 
        .CLK(CLK), .Q(y[2]) );
  DFFSSRX1_RVT \partials_reg[3][1]  ( .D(N85), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[1]) );
  DFFSSRX1_RVT \partials_reg[3][0]  ( .D(N84), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[0]) );
  XOR2X1_RVT U81 ( .A1(n66), .A2(\partials[2][7] ), .Y(N91) );
  AO22X1_RVT U82 ( .A1(n67), .A2(n68), .A3(\partials[2][6] ), .A4(n69), .Y(n66) );
  OR2X1_RVT U83 ( .A1(n68), .A2(n67), .Y(n69) );
  INVX0_RVT U84 ( .A(n70), .Y(n67) );
  XNOR3X1_RVT U85 ( .A1(n70), .A2(\partials[2][6] ), .A3(n68), .Y(N90) );
  AO22X1_RVT U86 ( .A1(n71), .A2(n72), .A3(\partials[2][5] ), .A4(n73), .Y(n68) );
  OR2X1_RVT U87 ( .A1(n72), .A2(n71), .Y(n73) );
  INVX0_RVT U88 ( .A(n74), .Y(n71) );
  NAND2X0_RVT U89 ( .A1(n62), .A2(\b_pipe[3][3] ), .Y(n70) );
  XNOR3X1_RVT U90 ( .A1(n74), .A2(\partials[2][5] ), .A3(n72), .Y(N89) );
  AO22X1_RVT U91 ( .A1(n75), .A2(n76), .A3(\partials[2][4] ), .A4(n77), .Y(n72) );
  NAND2X0_RVT U92 ( .A1(n78), .A2(n79), .Y(n77) );
  INVX0_RVT U93 ( .A(n78), .Y(n75) );
  NAND2X0_RVT U94 ( .A1(n62), .A2(\b_pipe[3][2] ), .Y(n74) );
  XNOR3X1_RVT U95 ( .A1(\partials[2][4] ), .A2(n78), .A3(n76), .Y(N88) );
  INVX0_RVT U96 ( .A(n79), .Y(n76) );
  NAND3X0_RVT U97 ( .A1(n65), .A2(n62), .A3(\partials[2][3] ), .Y(n79) );
  NAND2X0_RVT U98 ( .A1(n62), .A2(\b_pipe[3][1] ), .Y(n78) );
  XNOR2X1_RVT U99 ( .A1(\partials[2][3] ), .A2(n80), .Y(N87) );
  NAND2X0_RVT U100 ( .A1(n62), .A2(n65), .Y(n80) );
  AO22X1_RVT U101 ( .A1(n81), .A2(n82), .A3(\partials[1][5] ), .A4(n83), .Y(
        N63) );
  OR2X1_RVT U102 ( .A1(n82), .A2(n81), .Y(n83) );
  INVX0_RVT U103 ( .A(n84), .Y(n81) );
  XNOR3X1_RVT U104 ( .A1(n84), .A2(\partials[1][5] ), .A3(n82), .Y(N62) );
  AO22X1_RVT U105 ( .A1(n85), .A2(n86), .A3(\partials[1][4] ), .A4(n87), .Y(
        n82) );
  OR2X1_RVT U106 ( .A1(n86), .A2(n85), .Y(n87) );
  INVX0_RVT U107 ( .A(n88), .Y(n85) );
  NAND2X0_RVT U108 ( .A1(n63), .A2(\b_pipe[2][3] ), .Y(n84) );
  XNOR3X1_RVT U109 ( .A1(n88), .A2(\partials[1][4] ), .A3(n86), .Y(N61) );
  AO22X1_RVT U110 ( .A1(n89), .A2(n90), .A3(\partials[1][3] ), .A4(n91), .Y(
        n86) );
  NAND2X0_RVT U111 ( .A1(n92), .A2(n93), .Y(n91) );
  INVX0_RVT U112 ( .A(n93), .Y(n90) );
  NAND2X0_RVT U113 ( .A1(n63), .A2(\b_pipe[2][2] ), .Y(n88) );
  XNOR3X1_RVT U114 ( .A1(n93), .A2(\partials[1][3] ), .A3(n89), .Y(N60) );
  INVX0_RVT U115 ( .A(n92), .Y(n89) );
  NAND2X0_RVT U116 ( .A1(n63), .A2(\b_pipe[2][1] ), .Y(n92) );
  NAND3X0_RVT U117 ( .A1(n63), .A2(\b_pipe[2][0] ), .A3(\partials[1][2] ), .Y(
        n93) );
  XNOR2X1_RVT U118 ( .A1(\partials[1][2] ), .A2(n94), .Y(N59) );
  NAND2X0_RVT U119 ( .A1(\b_pipe[2][0] ), .A2(n63), .Y(n94) );
  AND2X1_RVT U120 ( .A1(RESETn), .A2(\b_pipe[0][3] ), .Y(N43) );
  AND2X1_RVT U121 ( .A1(RESETn), .A2(\b_pipe[0][2] ), .Y(N42) );
  AND2X1_RVT U122 ( .A1(RESETn), .A2(\b_pipe[0][1] ), .Y(N41) );
  AND2X1_RVT U123 ( .A1(RESETn), .A2(\b_pipe[0][0] ), .Y(N40) );
  AND2X1_RVT U124 ( .A1(n95), .A2(\b_pipe[1][3] ), .Y(N34) );
  XNOR2X1_RVT U125 ( .A1(n96), .A2(n95), .Y(N33) );
  AO22X1_RVT U126 ( .A1(n97), .A2(n98), .A3(\partials[0][3] ), .A4(n99), .Y(
        n95) );
  OR2X1_RVT U127 ( .A1(n98), .A2(n97), .Y(n99) );
  INVX0_RVT U128 ( .A(n100), .Y(n97) );
  NAND2X0_RVT U129 ( .A1(\b_pipe[1][3] ), .A2(n64), .Y(n96) );
  XNOR3X1_RVT U130 ( .A1(n100), .A2(\partials[0][3] ), .A3(n98), .Y(N32) );
  AO22X1_RVT U131 ( .A1(n101), .A2(n102), .A3(\partials[0][2] ), .A4(n103), 
        .Y(n98) );
  NAND2X0_RVT U132 ( .A1(n104), .A2(n105), .Y(n103) );
  INVX0_RVT U133 ( .A(n105), .Y(n102) );
  NAND2X0_RVT U134 ( .A1(n64), .A2(\b_pipe[1][2] ), .Y(n100) );
  XNOR3X1_RVT U135 ( .A1(n105), .A2(\partials[0][2] ), .A3(n101), .Y(N31) );
  INVX0_RVT U136 ( .A(n104), .Y(n101) );
  NAND2X0_RVT U137 ( .A1(n64), .A2(\b_pipe[1][1] ), .Y(n104) );
  NAND3X0_RVT U138 ( .A1(n64), .A2(\b_pipe[1][0] ), .A3(\partials[0][1] ), .Y(
        n105) );
  XNOR2X1_RVT U139 ( .A1(\partials[0][1] ), .A2(n106), .Y(N30) );
  NAND2X0_RVT U140 ( .A1(\b_pipe[1][0] ), .A2(n64), .Y(n106) );
endmodule

