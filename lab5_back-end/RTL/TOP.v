`timescale 1ns / 1ps

module TOP(CLK, RESETn, a, b, y);
	parameter bw = 16;
	
	input CLK, RESETn;
	input [bw-1:0] a, b;
	output [2*bw-1:0]y;	

	mul #(.bw(bw))  mul(.CLK(CLK), .RESETn(RESETn), .a(a), .b(b), .y(y));

endmodule

