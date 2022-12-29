//module TOP #(parameter bw = 4) (a, b, y, CLK, RESETn);
module TOP (a, b, y, CLK, RESETn);

parameter bw = 4;

input   [bw-1:0]   a, b;   
input              CLK, RESETn;
output  [2*bw-1:0] y;

    //array_mult #(.bw(bw)) AM (.a(a), .b(b), .y(y));
    array_mult AM (.a(a), .b(b), .y(y));
    //pipe_array_mult PAM(.a(a), .b(b), .RESETn(RESETn), .CLK(CLK), .y(y));

endmodule
