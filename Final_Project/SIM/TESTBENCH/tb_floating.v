`timescale 1ns / 1ps

module tb_floating;

	// Inputs
	reg CLK, RESETn;
	reg [15:0]  data_in_A, data_in_B, data_in_C;

	// Outputs
	wire [15:0] data_out;

	floating_MAC_16_v1 MAC (
		.CLK(CLK), 
		.RESETn(RESETn),
		.data_in_A(data_in_A), 
		.data_in_B(data_in_B),
		.data_in_C(data_in_C),
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESETn = 0;
		data_in_A = 16'd0;
		data_in_B = 16'd0;
		data_in_C = 16'd0;

		// Wait 100 ns for global reset to finish
		#10
        
		// Add stimulus here
		RESETn = 1;

		// data_in_A = 16'b0_00001_1010_0101_01;
		// data_in_B = 16'b0_00100_0110_0110_10;
		// data_in_C = 16'b0_10000_1101_1001_01;

		// #20
		// data_in_A = 16'b0_11110_0110_0110_10;
		// data_in_B = 16'b0_11000_1101_1001_01;
		// data_in_C = 16'b1_01010_0110_1100_10;

		// #20
		// data_in_A = 16'b1_01101_0110_1100_10;
		// data_in_B = 16'b1_01100_1100_0011_11;
		// data_in_C = 16'b0_01110_0110_0110_10;

		// #20
		// data_in_A = 16'b0_00110_1001_1010_10;
		// data_in_B = 16'b0_10000_0011_1001_11;
		// data_in_C = 16'b0_01010_0101_0111_10;

		// #20
		// data_in_A = 16'b0;
		// data_in_B = 16'b0;
		// data_in_C = 16'b0;

		data_in_A = 16'b0_01001_1010_0101_01;
        data_in_B = 16'b0_01110_0110_0110_10;
        data_in_C = 16'b0_10000_1101_1001_01;

        #20
        data_in_A = 16'b1_01110_0110_0110_10;
        data_in_B = 16'b0_10000_1101_1001_01;
        data_in_C = 16'b1_01010_0110_1100_10;

        #20
        data_in_A = 16'b1_01101_0110_1100_10;
        data_in_B = 16'b1_01100_1100_0011_11;
        data_in_C = 16'b0_01110_0110_0110_10;

        #20
        data_in_A = 16'b0_00110_1001_1010_10;
        data_in_B = 16'b0_10000_0011_1001_11;
        data_in_C = 16'b1_01010_0101_0111_10;

		#20
		data_in_A = 16'b0;
		data_in_B = 16'b0;
		data_in_C = 16'b0;

		#400

		$finish;
		
	end
	
	initial begin
		forever #10 CLK = ~CLK;
	end
endmodule
