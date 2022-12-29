`timescale 1ns/1ps

module TB_TOP ();

    parameter bw = 4;

    reg     [bw-1:0]   a, b;
    reg             CLK, RESETn;
    wire    [2*bw-1:0]   y;read
	
    //TOP #(.bw(bw)) UTOP(.a(a), .b(b), .y(y), .CLK(CLK), .RESETn(RESETn));
    TOP UTOP(.a(a), .b(b), .y(y), .CLK(CLK), .RESETn(RESETn));


	initial begin
        CLK = 1'b1;
        RESETn = 1'b0;

        a = 0;
        b = 0;

        #35
        a = 4'b0110;
        #5
        b = 4'b1011;

        #40
        a = 4'b0111;
        b = 4'b1100;

        #40
        a = 4'b1000;
        b = 4'b1101;

        #40
        a = 4'b1001;
        b = 4'b1110;

        #40
        a = 4'b1010;
        b = 4'b1111;

        #1000

		$finish;
	end

    always begin
        #20 CLK = !CLK;
    end

endmodule
