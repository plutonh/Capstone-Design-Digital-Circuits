/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon Oct 31 23:40:00 2022
/////////////////////////////////////////////////////////////


module mul_A_bw4 ( CLK, RESETn, a, b, y );
  input [3:0] a;
  input [3:0] b;
  output [7:0] y;
  input CLK, RESETn;
  wire   \b_pipe[3][3] , \b_pipe[3][2] , \b_pipe[3][1] , \b_pipe[3][0] ,
         \b_pipe[2][3] , \b_pipe[2][2] , \b_pipe[2][1] , \b_pipe[2][0] ,
         \b_pipe[1][3] , \b_pipe[1][2] , \b_pipe[1][1] , \b_pipe[1][0] ,
         \b_pipe[0][3] , \b_pipe[0][2] , \b_pipe[0][1] , \b_pipe[0][0] ,
         \a_pipe[3][3] , \a_pipe[2][3] , \a_pipe[2][2] , \a_pipe[1][3] ,
         \a_pipe[1][2] , \a_pipe[1][1] , \a_pipe[0][3] , \a_pipe[0][2] ,
         \a_pipe[0][1] , \a_pipe[0][0] , \partials[2][7] , \partials[2][6] ,
         \partials[2][5] , \partials[2][4] , \partials[2][3] ,
         \partials[1][5] , \partials[1][4] , \partials[1][3] ,
         \partials[1][2] , \partials[0][3] , \partials[0][2] ,
         \partials[0][1] , N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N40, N41, N42, N43, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62,
         N63, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, n62,
         n63, n64, n65, n66, n67, n68;
  wire   [7:1] \add_30_G4/carry ;
  wire   [7:1] \add_30_G3/carry ;
  wire   [7:1] \add_30_G2/carry ;

  DFFSSRX1_RVT \b_pipe_reg[0][3]  ( .D(b[3]), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\b_pipe[0][3] ) );
  DFFSSRX1_RVT \b_pipe_reg[0][2]  ( .D(b[2]), .SETB(1'b1), .RSTB(n67), .CLK(
        CLK), .Q(\b_pipe[0][2] ) );
  DFFSSRX1_RVT \b_pipe_reg[0][1]  ( .D(b[1]), .SETB(1'b1), .RSTB(n68), .CLK(
        CLK), .Q(\b_pipe[0][1] ) );
  DFFSSRX1_RVT \b_pipe_reg[0][0]  ( .D(b[0]), .SETB(1'b1), .RSTB(n67), .CLK(
        CLK), .Q(\b_pipe[0][0] ) );
  DFFSSRX1_RVT \a_pipe_reg[0][3]  ( .D(a[3]), .SETB(1'b1), .RSTB(n68), .CLK(
        CLK), .Q(\a_pipe[0][3] ) );
  DFFSSRX1_RVT \a_pipe_reg[0][2]  ( .D(a[2]), .SETB(1'b1), .RSTB(n67), .CLK(
        CLK), .Q(\a_pipe[0][2] ) );
  DFFSSRX1_RVT \a_pipe_reg[0][1]  ( .D(a[1]), .SETB(1'b1), .RSTB(n68), .CLK(
        CLK), .Q(\a_pipe[0][1] ) );
  DFFSSRX1_RVT \a_pipe_reg[0][0]  ( .D(a[0]), .SETB(1'b1), .RSTB(n67), .CLK(
        CLK), .Q(\a_pipe[0][0] ) );
  DFFSSRX1_RVT \partials_reg[0][3]  ( .D(\a_pipe[0][0] ), .SETB(1'b1), .RSTB(
        N43), .CLK(CLK), .Q(\partials[0][3] ) );
  DFFSSRX1_RVT \partials_reg[0][2]  ( .D(N42), .SETB(1'b1), .RSTB(
        \a_pipe[0][0] ), .CLK(CLK), .Q(\partials[0][2] ) );
  DFFSSRX1_RVT \partials_reg[0][1]  ( .D(N41), .SETB(1'b1), .RSTB(
        \a_pipe[0][0] ), .CLK(CLK), .Q(\partials[0][1] ) );
  DFFSSRX1_RVT \partials_reg[0][0]  ( .D(N40), .SETB(1'b1), .RSTB(
        \a_pipe[0][0] ), .CLK(CLK), .Q(N29) );
  DFFSSRX1_RVT \b_pipe_reg[1][3]  ( .D(\b_pipe[0][3] ), .SETB(1'b1), .RSTB(n68), .CLK(CLK), .Q(\b_pipe[1][3] ) );
  DFFSSRX1_RVT \b_pipe_reg[1][2]  ( .D(\b_pipe[0][2] ), .SETB(1'b1), .RSTB(n67), .CLK(CLK), .Q(\b_pipe[1][2] ) );
  DFFSSRX1_RVT \b_pipe_reg[1][1]  ( .D(\b_pipe[0][1] ), .SETB(1'b1), .RSTB(n68), .CLK(CLK), .Q(\b_pipe[1][1] ) );
  DFFSSRX1_RVT \b_pipe_reg[1][0]  ( .D(\b_pipe[0][0] ), .SETB(1'b1), .RSTB(n67), .CLK(CLK), .Q(\b_pipe[1][0] ) );
  DFFSSRX1_RVT \a_pipe_reg[1][3]  ( .D(\a_pipe[0][3] ), .SETB(1'b1), .RSTB(n68), .CLK(CLK), .Q(\a_pipe[1][3] ) );
  DFFSSRX1_RVT \a_pipe_reg[1][2]  ( .D(\a_pipe[0][2] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\a_pipe[1][2] ) );
  DFFSSRX1_RVT \a_pipe_reg[1][1]  ( .D(\a_pipe[0][1] ), .SETB(1'b1), .RSTB(n66), .CLK(CLK), .Q(\a_pipe[1][1] ) );
  DFFSSRX1_RVT \partials_reg[1][5]  ( .D(N34), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(\partials[1][5] ) );
  DFFSSRX1_RVT \partials_reg[1][4]  ( .D(N33), .SETB(1'b1), .RSTB(n66), .CLK(
        CLK), .Q(\partials[1][4] ) );
  DFFSSRX1_RVT \partials_reg[1][3]  ( .D(N32), .SETB(1'b1), .RSTB(n66), .CLK(
        CLK), .Q(\partials[1][3] ) );
  DFFSSRX1_RVT \partials_reg[1][2]  ( .D(N31), .SETB(1'b1), .RSTB(n66), .CLK(
        CLK), .Q(\partials[1][2] ) );
  DFFSSRX1_RVT \partials_reg[1][1]  ( .D(N30), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(N58) );
  DFFSSRX1_RVT \partials_reg[1][0]  ( .D(N29), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(N57) );
  DFFSSRX1_RVT \b_pipe_reg[2][3]  ( .D(\b_pipe[1][3] ), .SETB(1'b1), .RSTB(n66), .CLK(CLK), .Q(\b_pipe[2][3] ) );
  DFFSSRX1_RVT \b_pipe_reg[2][2]  ( .D(\b_pipe[1][2] ), .SETB(1'b1), .RSTB(n64), .CLK(CLK), .Q(\b_pipe[2][2] ) );
  DFFSSRX1_RVT \b_pipe_reg[2][1]  ( .D(\b_pipe[1][1] ), .SETB(1'b1), .RSTB(n65), .CLK(CLK), .Q(\b_pipe[2][1] ) );
  DFFSSRX1_RVT \b_pipe_reg[2][0]  ( .D(\b_pipe[1][0] ), .SETB(1'b1), .RSTB(n64), .CLK(CLK), .Q(\b_pipe[2][0] ) );
  DFFSSRX1_RVT \a_pipe_reg[2][3]  ( .D(\a_pipe[1][3] ), .SETB(1'b1), .RSTB(n65), .CLK(CLK), .Q(\a_pipe[2][3] ) );
  DFFSSRX1_RVT \a_pipe_reg[2][2]  ( .D(\a_pipe[1][2] ), .SETB(1'b1), .RSTB(n64), .CLK(CLK), .Q(\a_pipe[2][2] ) );
  DFFSSRX1_RVT \partials_reg[2][7]  ( .D(1'b0), .SETB(1'b1), .RSTB(n65), .CLK(
        CLK), .Q(\partials[2][7] ) );
  DFFSSRX1_RVT \partials_reg[2][6]  ( .D(N63), .SETB(1'b1), .RSTB(n64), .CLK(
        CLK), .Q(\partials[2][6] ) );
  DFFSSRX1_RVT \partials_reg[2][5]  ( .D(N62), .SETB(1'b1), .RSTB(n65), .CLK(
        CLK), .Q(\partials[2][5] ) );
  DFFSSRX1_RVT \partials_reg[2][4]  ( .D(N61), .SETB(1'b1), .RSTB(n64), .CLK(
        CLK), .Q(\partials[2][4] ) );
  DFFSSRX1_RVT \partials_reg[2][3]  ( .D(N60), .SETB(1'b1), .RSTB(n65), .CLK(
        CLK), .Q(\partials[2][3] ) );
  DFFSSRX1_RVT \partials_reg[2][2]  ( .D(N59), .SETB(1'b1), .RSTB(n64), .CLK(
        CLK), .Q(N86) );
  DFFSSRX1_RVT \partials_reg[2][1]  ( .D(N58), .SETB(1'b1), .RSTB(n65), .CLK(
        CLK), .Q(N85) );
  DFFSSRX1_RVT \partials_reg[2][0]  ( .D(N57), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(N84) );
  DFFSSRX1_RVT \b_pipe_reg[3][3]  ( .D(\b_pipe[2][3] ), .SETB(1'b1), .RSTB(n63), .CLK(CLK), .Q(\b_pipe[3][3] ) );
  DFFSSRX1_RVT \b_pipe_reg[3][2]  ( .D(\b_pipe[2][2] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[3][2] ) );
  DFFSSRX1_RVT \b_pipe_reg[3][1]  ( .D(\b_pipe[2][1] ), .SETB(1'b1), .RSTB(n63), .CLK(CLK), .Q(\b_pipe[3][1] ) );
  DFFSSRX1_RVT \b_pipe_reg[3][0]  ( .D(\b_pipe[2][0] ), .SETB(1'b1), .RSTB(
        RESETn), .CLK(CLK), .Q(\b_pipe[3][0] ) );
  DFFSSRX1_RVT \a_pipe_reg[3][3]  ( .D(\a_pipe[2][3] ), .SETB(1'b1), .RSTB(n63), .CLK(CLK), .Q(\a_pipe[3][3] ) );
  DFFSSRX1_RVT \partials_reg[3][7]  ( .D(N91), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[7]) );
  DFFSSRX1_RVT \partials_reg[3][6]  ( .D(N90), .SETB(1'b1), .RSTB(n63), .CLK(
        CLK), .Q(y[6]) );
  DFFSSRX1_RVT \partials_reg[3][5]  ( .D(N89), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[5]) );
  DFFSSRX1_RVT \partials_reg[3][4]  ( .D(N88), .SETB(1'b1), .RSTB(n63), .CLK(
        CLK), .Q(y[4]) );
  DFFSSRX1_RVT \partials_reg[3][3]  ( .D(N87), .SETB(1'b1), .RSTB(RESETn), 
        .CLK(CLK), .Q(y[3]) );
  DFFSSRX1_RVT \partials_reg[3][2]  ( .D(RESETn), .SETB(1'b1), .RSTB(N86), 
        .CLK(CLK), .Q(y[2]) );
  DFFSSRX1_RVT \partials_reg[3][1]  ( .D(N85), .SETB(1'b1), .RSTB(n63), .CLK(
        CLK), .Q(y[1]) );
  DFFSSRX1_RVT \partials_reg[3][0]  ( .D(N84), .SETB(1'b1), .RSTB(n66), .CLK(
        CLK), .Q(y[0]) );
  AND2X1_RVT U64 ( .A1(\b_pipe[3][3] ), .A2(\a_pipe[3][3] ), .Y(N83) );
  AND2X1_RVT U65 ( .A1(\b_pipe[3][2] ), .A2(\a_pipe[3][3] ), .Y(N82) );
  AND2X1_RVT U66 ( .A1(\b_pipe[3][1] ), .A2(\a_pipe[3][3] ), .Y(N81) );
  AND2X1_RVT U67 ( .A1(\b_pipe[3][0] ), .A2(\a_pipe[3][3] ), .Y(N80) );
  AND2X1_RVT U68 ( .A1(\a_pipe[2][2] ), .A2(\b_pipe[2][3] ), .Y(N56) );
  AND2X1_RVT U69 ( .A1(\a_pipe[2][2] ), .A2(\b_pipe[2][2] ), .Y(N55) );
  AND2X1_RVT U70 ( .A1(\a_pipe[2][2] ), .A2(\b_pipe[2][1] ), .Y(N54) );
  AND2X1_RVT U71 ( .A1(\a_pipe[2][2] ), .A2(\b_pipe[2][0] ), .Y(N53) );
  AND2X1_RVT U72 ( .A1(\a_pipe[1][1] ), .A2(\b_pipe[1][3] ), .Y(N28) );
  AND2X1_RVT U73 ( .A1(\a_pipe[1][1] ), .A2(\b_pipe[1][2] ), .Y(N27) );
  AND2X1_RVT U74 ( .A1(\a_pipe[1][1] ), .A2(\b_pipe[1][1] ), .Y(N26) );
  AND2X1_RVT U75 ( .A1(\a_pipe[1][1] ), .A2(\b_pipe[1][0] ), .Y(N25) );
  AND2X1_RVT U76 ( .A1(\b_pipe[0][3] ), .A2(RESETn), .Y(N43) );
  AND2X1_RVT U77 ( .A1(\b_pipe[0][2] ), .A2(RESETn), .Y(N42) );
  AND2X1_RVT U78 ( .A1(\b_pipe[0][1] ), .A2(RESETn), .Y(N41) );
  AND2X1_RVT U79 ( .A1(\b_pipe[0][0] ), .A2(RESETn), .Y(N40) );
  FADDX1_RVT \add_30_G4/U1_4  ( .A(N81), .B(\partials[2][4] ), .CI(
        \add_30_G4/carry [4]), .CO(\add_30_G4/carry [5]), .S(N88) );
  FADDX1_RVT \add_30_G4/U1_5  ( .A(N82), .B(\partials[2][5] ), .CI(
        \add_30_G4/carry [5]), .CO(\add_30_G4/carry [6]), .S(N89) );
  FADDX1_RVT \add_30_G4/U1_6  ( .A(N83), .B(\partials[2][6] ), .CI(
        \add_30_G4/carry [6]), .CO(\add_30_G4/carry [7]), .S(N90) );
  FADDX1_RVT \add_30_G3/U1_3  ( .A(N54), .B(\partials[1][3] ), .CI(
        \add_30_G3/carry [3]), .CO(\add_30_G3/carry [4]), .S(N60) );
  FADDX1_RVT \add_30_G3/U1_4  ( .A(N55), .B(\partials[1][4] ), .CI(
        \add_30_G3/carry [4]), .CO(\add_30_G3/carry [5]), .S(N61) );
  FADDX1_RVT \add_30_G3/U1_5  ( .A(N56), .B(\partials[1][5] ), .CI(
        \add_30_G3/carry [5]), .CO(N63), .S(N62) );
  FADDX1_RVT \add_30_G2/U1_2  ( .A(N26), .B(\partials[0][2] ), .CI(
        \add_30_G2/carry [2]), .CO(\add_30_G2/carry [3]), .S(N31) );
  FADDX1_RVT \add_30_G2/U1_3  ( .A(N27), .B(\partials[0][3] ), .CI(
        \add_30_G2/carry [3]), .CO(\add_30_G2/carry [4]), .S(N32) );
  INVX1_RVT U81 ( .A(n62), .Y(n63) );
  INVX1_RVT U82 ( .A(n62), .Y(n65) );
  INVX1_RVT U83 ( .A(n62), .Y(n64) );
  INVX1_RVT U84 ( .A(n62), .Y(n68) );
  INVX1_RVT U85 ( .A(n62), .Y(n67) );
  INVX1_RVT U86 ( .A(n62), .Y(n66) );
  INVX1_RVT U87 ( .A(RESETn), .Y(n62) );
  XOR2X1_RVT U88 ( .A1(\partials[2][7] ), .A2(\add_30_G4/carry [7]), .Y(N91)
         );
  AND2X1_RVT U89 ( .A1(N80), .A2(\partials[2][3] ), .Y(\add_30_G4/carry [4])
         );
  XOR2X1_RVT U90 ( .A1(N80), .A2(\partials[2][3] ), .Y(N87) );
  AND2X1_RVT U91 ( .A1(N53), .A2(\partials[1][2] ), .Y(\add_30_G3/carry [3])
         );
  XOR2X1_RVT U92 ( .A1(N53), .A2(\partials[1][2] ), .Y(N59) );
  AND2X1_RVT U93 ( .A1(N28), .A2(\add_30_G2/carry [4]), .Y(N34) );
  XOR2X1_RVT U94 ( .A1(N28), .A2(\add_30_G2/carry [4]), .Y(N33) );
  AND2X1_RVT U95 ( .A1(N25), .A2(\partials[0][1] ), .Y(\add_30_G2/carry [2])
         );
  XOR2X1_RVT U96 ( .A1(N25), .A2(\partials[0][1] ), .Y(N30) );
endmodule

