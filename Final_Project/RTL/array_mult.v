module array_mult (a, b, y, cout, CLK, RESETn);
    parameter bw = 10;

    input CLK, RESETn;
    input [bw-1:0] a, b;
    output[bw-1:0] y;
    output cout;

    wire [2*bw-1:0] partials[bw-1:0];
    wire [2*bw-1:0] sum[bw-1:0];
    wire [2*bw:0] carry[bw-1:0];

    reg [2*bw-1:0] SUM;
    reg [2*bw:0] COUT;

    genvar i;
    generate
        for(i = 0; i < bw; i = i + 1) begin : gen
            assign partials[i] = {a&{bw{b[i]}}} << i;
        end
    endgenerate

    genvar j;
    generate
        for(j = 0; j < bw; j = j + 1) begin : tmp
            assign carry[j][0] = 0;
        end
    endgenerate

    assign sum[0] = partials[0];

    genvar r, c;
    generate
        for(r = 1; r < bw ; r = r + 1) begin: psum_row
            for(c = 0; c < 2*bw; c = c + 1) begin: psum_col
                full_adder u0(sum[r-1][c], partials[r][c], carry[r-1][c], sum[r][c], carry[r-1][c+1]);
            end
        end
    endgenerate

    always @(posedge CLK or negedge RESETn) begin
        if(!RESETn) begin
            SUM  <= 0;
            COUT <= 0;
        end else begin
            SUM  <= sum[9];
            COUT <= carry[9];
        end
    end

    assign y = SUM[19:10];
    assign cout = COUT[20];

endmodule

module full_adder (a, b, cin, s, cout);
    input a, b ,cin;
    output s, cout;

    wire s1, c1, c2;

    half_adder ha1(a, b, s1, c1);
    half_adder ha2(cin, s1, s, c2);
    or(cout, c1, c2);
endmodule

module half_adder (x, y, s, c);
    input x, y;
    output s, c;

    xor(s, x, y);
    and(c, x, y);
endmodule