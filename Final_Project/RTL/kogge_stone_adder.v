module kogge_stone_adder  (a, b, cin, SUM, COUT);
	parameter bw = 16;
    parameter integer stage = $clog2(bw);

	input  		[bw - 1:1]  a, b;
    input          			cin;
    output  	[bw - 1:1]  SUM;
    output      			COUT;
	
	wire [bw - 1:0] G1 [stage:0];
    wire [bw - 1:0] P1 [stage:0];

    genvar i, j;

    generate
		for(i = 0; i < stage; i = i + 1) begin  : Pre_processing_1
			assign P1[i][0] = 0;
			assign G1[i][0] = cin;
		end
	endgenerate

	generate
		for(i = 1; i < bw; i = i + 1) begin     : Pre_processing_2
			assign P1[0][i] = a[i] ^ b[i];
            assign G1[0][i] = a[i] & b[i];
        end
	endgenerate

	generate
        for(i = 0; i < stage; i = i + 1) begin : loop
            if(i == 0) begin
                for(j = 2**i; j < bw; j = j + 1) begin   : Carry_look_ahead_network_1
                    black B_Cell(G1[0][j], P1[0][j], G1[0][j - 1], P1[0][j - 1], G1[1][j], P1[1][j]);
				end
				grey G_cell(G1[0][1], P1[0][1], G1[0][0], G1[1][1]);
				assign G1[1][0] = G1[0][0];
				assign P1[1][0] = P1[0][0];
				assign SUM[1]   = P1[0][1] ^ G1[0][1];
			end else if(i == stage - 1) begin
				for(j = 2**i; j < 2**(i + 1); j = j + 1) begin : Post_processing_1
                    grey G_cell(G1[i][j], P1[i][j], G1[i][j - 2**(i - 1)], G1[i + 1][j]);
					assign SUM[j] = P1[0][j] ^ G1[i - 1][j];
                end
				for(j = 0; j < 2**i; j = j + 1) begin          : Post_processing_2
					assign G1[i][j] = G1[i - 1][j];
					assign P1[i][j] = P1[i - 1][j];
				end
            end else begin                                  
				for(j = 2**(i + 1); j < bw; j = j + 1) begin   : Carry_look_ahead_network_2
                    black B_Cell(G1[i][j], P1[i][j], G1[i][j - 2**(i - 1)], P1[i][j - 2**(i - 1)], G1[i + 1][j], P1[i + 1][j]);
				end
                for(j = 2**i; j < 2**(i + 1); j = j + 1) begin : Carry_look_ahead_network_3
                    grey G_cell(G1[i][j], P1[i][j], G1[i][j - 2**(i - 1)], G1[i + 1][j]);
					assign SUM[j] = P1[0][j] ^ G1[i - 1][j];
                end
				for(j = 0; j < 2**i; j = j + 1) begin          : Carry_look_ahead_network_4
					assign G1[i][j] = G1[i - 1][j];
					assign P1[i][j] = P1[i - 1][j];
				end
			end
		end
	endgenerate

	assign COUT = G1[4][15];

endmodule

module grey(Gik, Pik, gik, Gij);
	
	input  wire Gik;
  	input  wire Pik;
  	input  wire gik;
  	output wire Gij;
	
	assign Gij = Gik | (Pik & gik);

endmodule

module black(Gik, Pik, gik, pik, Gij, Pij);
	
	input  wire Gik;
  	input  wire Pik;
  	input  wire gik;
	input  wire pik;
  	output wire Gij;
	output wire Pij;

	assign Gij = Gik | (Pik & gik);
	assign Pij = Pik & pik;

endmodule