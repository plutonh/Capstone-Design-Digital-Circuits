module mul_A (CLK, RESETn, a, b, y);
	parameter bw = 32;
	
	input [bw-1:0] a, b;
	input CLK;
	input RESETn;
	output [2*bw-1:0] y;
	
	reg [bw-1:0] a_pipe [bw-1:0];
	reg [bw-1:0] b_pipe [bw-1:0];
	reg [2*bw-1:0] partials [bw-1:0];
	
	genvar i, j;
	for(i=0; i<bw; i=i+1) begin : gen1
		always@(posedge CLK) begin
			if(!RESETn) begin
				a_pipe[i] <= 0;
				b_pipe[i] <= 0;
				partials[i] <= 0;
			end
			else begin
				if(i==0) begin
					a_pipe[i] <= a;
					b_pipe[i] <= b;
					partials[i] <=(a_pipe[i][i] ? b_pipe[i] << i : 0);
				end
				else begin
					a_pipe[i] <= a_pipe[i-1];
					b_pipe[i] <= b_pipe[i-1];
					partials[i] <=(a_pipe[i][i] ? b_pipe[i] << i : 0) + partials[i-1];
				end				
			end
		end
	end
	
	assign y = partials[bw-1];

endmodule