module carry_ripple_adder(A, B, Cin, Sum, Cout, clock, resetn);
	parameter bw = 31;
	
	input 			clock;
	input			resetn;
	input 		[bw:0] 	A;
	input 		[bw:0] 	B;
	input 			Cin;
	output	        [bw:0] 	Sum;
	output 		        Cout;
	
	
	
	wire [bw:0] G;
	wire [bw:0] P;
	wire [bw:0] GG;
	wire [bw:1] S;
	
	assign G[0] = Cin;
	assign P[0] = 0;
	assign G[bw:1] = A & B;
	assign P[bw:1] = A ^ B;
	
	assign GG[0] = G[0];
	G_Cell U0(G[0], G[1], P[1], GG[1]);
	
	genvar i;
	generate
		for(i=1; i<=bw; i=i+1) begin: loop_1
			if(i<bw)
				G_Cell U1(GG[i], G[i+1], P[i+1], GG[i+1]);
			assign S[i] = P[i] ^ GG[i-1];
		end
	endgenerate
	
	always@(posedge clock, negedge resetn) begin
		if(!resetn) begin
			Cout <= 0;
			Sum <= 0;
		end else begin
			Cout <= GG[bw];
			Sum <= S;
		end
	end
	
endmodule

module G_Cell(G0, G1, P1, GG);
	input G0;
	input G1;
	input P1;
	output GG;
	
	assign GG = G1 | (P1 & G0);
endmodule