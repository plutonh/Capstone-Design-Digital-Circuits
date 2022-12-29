module pipe_array_mult (a, b, y, CLK, RESETn);

    parameter bw = 4;

    input CLK, RESETn;
    input [bw-1:0] a, b;
    output [2*bw-1:0] y;

    reg [bw-1:0] a_pipe [bw-1:0];
    reg [bw-1:0] b_pipe [bw-1:0];
    reg [2*bw-1:0] partials [bw-1:0];

    integer i;

    always @(posedge CLK) begin
        a_pipe[0] <= a;
        b_pipe[0] <= b;
        partials[0] <= a[0] ? b : 0;

        for (i = 1; i < bw; i = i + 1) begin
            a_pipe[i] <= a_pipe[i-1];
            b_pipe[i] <= b_pipe[i-1];
            partials[i] <= (a_pipe[i-1][i] ? b_pipe[i-1] << i : 0) + partials[i-1];
        end
    end

    assign y = partials[bw-1];

endmodule