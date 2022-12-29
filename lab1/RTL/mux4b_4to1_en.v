module mux4b_4to1_en (a, b, c, d, sel, enable, out);

input [3:0] a, b, c, d;
input [1:0] sel;
input enable;
output [3:0] out;
reg [3:0] out;

always @(a, b, c, d, sel, enable) begin
	if(enable == 1'b0) begin
		case(sel)
			2'b00 : out = a;
			2'b01 : out = b;
			2'b10 : out = c;
			2'b11 : out = d;
		endcase
	end

	else begin
		out = 4'b0000;
	end
end

endmodule
