`timescale 1ns / 1ps

module TB_TOP ();

        // Inputs
        reg clock;
        reg resetn;
        reg [15:1] A;
        reg [15:1] B;
        reg Cin;

        // Outputs
        wire [15:1] Sum;
        wire Cout;

        TOP UTOP(A, B, Cin, Sum, Cout, clock, resetn);

        initial begin
                // Initialize Inputs
                A = 0;
                B = 0;
                Cin = 0;

                // Wait 100 ns for global reset to finish
                #2000;

                $finish;
                // Add stimulus here

        end
        always #200 A = A + 1;
        always #200 B = B + 2;
        initial begin
                clock = 0;
                resetn = 1;
                #5;
                forever #5 clock = ~clock;
        end
endmodule