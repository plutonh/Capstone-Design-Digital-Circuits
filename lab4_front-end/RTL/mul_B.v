module mul_B(CLK, RESETn, a, b, y);
	parameter bw = 4;

	input [bw-1:0] a, b;
	input CLK;
	input RESETn;
	output [2*bw-1:0] y;
	
	reg [bw-1:0] a_pipe [bw-1:0];
	reg [bw-1:0] b_pipe [bw-1:0];
	
	wire [2*bw-1:0] partials [bw-1:0];
	wire [2*bw-1:0] sum [bw-1:0];
	wire [2*bw:0] carry [bw-1:1];
	
	genvar i, j;
	for(i=0; i<bw; i=i+1) begin : gen1
		always@(posedge CLK) begin
			if(!RESETn) begin
				a_pipe[i] <= 0;
				b_pipe[i] <= 0;
			end
			else begin
				a_pipe[0] <= a;
				b_pipe[0] <= b;
				if(i<bw-1) begin
					a_pipe[i+1] <= a_pipe[i];
					b_pipe[i+1] <= b_pipe[i];
				end				
			end
		end
		assign partials[i] = {a_pipe[i]&{bw{b_pipe[i][i]}}} << i;
		assign carry[i][0] = 1'b0; // [addr][bit]
	end
		
	generate
		for(i=1; i<bw; i=i+1) begin : gen4
			for(j=0; j<2*bw; j=j+1) begin : gen5
				fulladder_1bit u0(.CLK(CLK), .RESETn(RESETn), .a(partials[i][j]), .b(sum[i-1][j]), .ci(carry[i][j]), .sum(sum[i][j]), .co(carry[i][j+1]));
			end
		end
	endgenerate
	
	assign sum[0] = partials[0]; // [addr]
	assign y = sum[bw-1];

endmodule


module fulladder_1bit(
	input CLK,
	input RESETn,
	input a,
	input b,
	input ci,
	output reg sum,
	output co
	);
	wire s1,c1,c2, s;
	half_adder ha1(a,b,s1,c1);
	half_adder ha2(ci,s1,s,c2);
	or(co,c1,c2);
	
	always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			sum <= 0;
		end
		else begin
			sum <= s;
		end
	end
	
endmodule

module half_adder(x,y,s,c);
	input x,y;
	output s,c;
	xor(s,x,y);
	and(c,x,y);
	
endmodule



/*
module filpflop(CLK, RESETn, in, out);
	
				//if(j-i+1<bw)
				//if(j<i-1)
				//	filpflop u1(.CLK(CLK), .in(partials[i-1][j]), .out(partials[i][j]));	
	input CLK;
	input RESETn;
	input in;
	output reg out;
	
	always@(posedge CLK, negedge RESETn) begin
		if(!RESETn)
			out <= 0;
		else
			out <= in;
	end
endmodule
*/
