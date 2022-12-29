`timescale 1ns/1ps

module TB_no_pipeline ();
    reg     [2:0]   a, b, c, d;
    reg             clock, resetn;
    wire    [7:0]   y;
	
    no_pipeline Uno_pipeline(.a(a), .b(b), .c(c), .d(d), .y(y), .CLK(clock), .RESETn(resetn));

	initial begin
        clock = 1'b1;
        resetn = 1'b1;

        a = 3'd1;
        b = 3'd2;
        c = 3'd3;
        d = 3'd4;

        #1000;

		$finish;
	end

    always begin
        #20 clock = !clock;
    end

    always begin
        #40 a = a + 3'b1; b = b + 3'b1; c = c + 3'b1; d = d + 3'b1;
    end

endmodule
