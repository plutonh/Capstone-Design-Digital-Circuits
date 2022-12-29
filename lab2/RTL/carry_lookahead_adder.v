module carry_lookahead_adder(a, b, ci, sum, cout, clock, resetn);

        input clock;
	input resetn;
	input [31:0] a;
        input [31:0] b;
        input ci;
        output  [31:0] sum;
        output  cout;

        wire [3:0] C;
	wire [31:0] S;

        CLA8 u0 (a[7:0], b[7:0], ci, S[7:0], C[0], clock, resetn);
        CLA8 u1 (a[15:8], b[15:8], C[1], S[15:8], C[1], clock, resetn);
        CLA8 u2 (a[23:16], b[23:16], C[2], S[23:16], C[2], clock, resetn);
        CLA8 u3 (a[31:24], b[31:24], C[3], S[31:24], C[3], clock, resetn);

	always @(posedge clock, negedge resetn) begin
		if(!resetn) begin
			cout <= 0;
			sum <= 0;
		end
		else begin
			cout <= C[3];
			sum <= S;
		end
	end

endmodule

module CLA8(A, B, Ci, S, Co, clock, resetn);

        input [7:0] A;
        input [7:0] B;
        input Ci;
        input clock;
        input resetn;
        output [7:0] S;
        output Co;

        wire [7:0] G;
        wire [7:0] P;
        wire [7:0] C;

        reg RCo;

        GPFullAdder FA0 (A[0], B[0], Ci, G[0], P[0], S[0]);
        GPFullAdder FA1 (A[1], B[1], C[0], G[1], P[1], S[1]);
        GPFullAdder FA2 (A[2], B[2], C[1], G[2], P[2], S[2]);
        GPFullAdder FA3 (A[3], B[3], C[2], G[3], P[3], S[3]);
	GPFullAdder FA4 (A[4], B[4], C[3], G[4], P[4], S[4]);
        GPFullAdder FA5 (A[5], B[5], C[4], G[5], P[5], S[5]);
	GPFullAdder FA6 (A[6], B[6], C[5], G[6], P[6], S[6]);
        GPFullAdder FA7 (A[7], B[7], C[6], G[7], P[7], S[7]);

	CLALogic_8 CarryLogic (G, P, Ci, C, Co);

        always @(posedge clock, negedge resetn) begin
                if(!resetn) begin
                        RCo <= 0;
                end
                else begin
                        RCo <= C[6];
                end
        end

        assign Co = RCo;
endmodule

module GPFullAdder (X, Y, Cin, G, P, Sum);

        input X;
        input Y;
        input Cin;
        output G;
        output P;
        output Sum;

        assign G = X & Y;
        assign P = X ^ Y;
        assign Sum = P ^ Cin;
endmodule

module CLALogic_8 (G, P, Ci, C, Co);

        input [7:0] G;
        input [7:0] P;
        input Ci;
        output [7:0] C;
	output Co;

        assign PP = P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0];
        assign GG = G[7] |
                    (P[7] & G[6]) |
                    (P[7] & P[6] & G[5]) |
                    (P[7] & P[6] & P[5] & G[4]) |
		    (P[7] & P[6] & P[5] & P[4] & G[3]) |
		    (P[7] & P[6] & P[5] & P[4] & P[3] & G[2]) |
		    (P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1]) |
		    (P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0]);
	
        assign C[1] = G[0] | (P[0] & Ci);
	assign C[2] = G[1] | (P[1] & C[1]);
	assign C[3] = G[2] | (P[2] & C[2]);
	assign C[4] = G[3] | (P[3] & C[3]);
	assign C[5] = G[4] | (P[4] & C[4]);
	assign C[6] = G[5] | (P[5] & C[5]);
	assign C[7] = G[6] | (P[6] & C[6]);
	assign Co = GG | (PP & Ci);

endmodule