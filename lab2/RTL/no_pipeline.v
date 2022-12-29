module no_pipeline (a,b,c,d,
                    RESETn,CLK,
                    y);
input       [2:0]   a,b,c,d;   
input               CLK, RESETn;
output  reg [7:0]   y;

    reg [3:0] temp_0, temp_1;
    
    always @(posedge CLK or negedge RESETn) begin
        if (!RESETn) begin
            y   <= 8'd0;
        end else begin
            y   <= { {1'b0,a[2:0]} + {1'b0,b[2:0]} } * { {1'b0,c[2:0]} + {1'b0,d[2:0]} };
        end
    end

endmodule

