module TOP (a, b, ci, sum, cout, clock, resetn);

	input [15:1] a;
    input [15:1] b;
    input ci;
    output [15:1] sum;
    output cout;
    input clock;
	input resetn;

    // Uncomment the module you want to run
    // carry_ripple_adder CRA(a, b, ci, sum, cout, clock, resetn);
    // carry_lookahead_adder CLA(a, b, ci, sum, cout, clock, resetn);
    kogge_stone_adder KSA (a, b, ci, sum, cout, clock, resetn);
    // pipe_carry_ripple_adder PCRA(a, b, ci, sum, cout, clock, resetn);
    // pipe_carry_lookahead_adder PCLA(a, b, ci, sum, cout, clock, resetn);
    // pipe_kogge_stone_adder PKSA(a, b, ci, sum, cout, clock, resetn);

endmodule