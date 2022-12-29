module tb_full_adder();
    reg a, b, cin;
    wire sum, cout;
    integer k;
	
    full_adder u0 (a, b, cin, sum, cout);

	initial begin
        for (k=0; k<8; k=k+1) begin
            cin = k/4;
            b = (k%4)/2;
            a = k%2;
            #10;
		end
		$finish;
	end

endmodule

