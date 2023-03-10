`timescale 1ns / 1ps

module TB_TOP;
	
	parameter bw=16;
	// Inputs
	reg CLK;
	reg RESETn;
	reg [bw-1:0] a;
	reg [bw-1:0] b;

	// Outputs
	wire [2*bw-1:0] y;

	// Instantiate the Unit Under Test (UUT)
	TOP uut (
		.CLK(CLK), 
		.RESETn(RESETn),
		.a(a), 
		.b(b),
		.y(y)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESETn = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		RESETn = 1;

		#10000;
		$finish;
		
	end
	
	always #20 a = a + 1;
	always #20 b = b + 2;
	initial begin
		forever #10 CLK = ~CLK;
	end
endmodule

