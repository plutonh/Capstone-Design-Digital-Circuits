//module array_mult #(parameter bw = 4) (a, b, y);
module array_mult (a, b, y);

    parameter bw = 16;

    input [bw-1:0] a, b;
    output [2*bw-1:0] y;

    wire [2*bw-1:0] partials[bw-1:0];
    wire [2*bw-1:0] sum[bw-1:0];
    wire [2*bw:0] carry[bw-1:0];

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
            for(c = 0; c < 2*bw ; c = c + 1) begin: psum_col
                full_adder u0(sum[r-1][c], partials[r][c], carry[r-1][c], sum[r][c], carry[r-1][c+1]);
            end
        end
    endgenerate

    assign y = sum[bw-1];

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