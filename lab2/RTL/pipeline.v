module pipeline (a,b,c,d,
                resetn,clock,
                y);
input       [2:0]   a,b,c,d;   
input               clock, resetn;
output  reg [7:0]   y;

    reg [3:0] temp_0, temp_1;
    
    always @(posedge clock or negedge resetn) begin
        if (!resetn) begin
            temp_0  <= 4'b0;
            temp_1  <= 4'b0;
            y       <= 8'd0;
        end else begin
            temp_0  <= {1'b0,a[2:0]} + {1'b0,b[2:0]};
            temp_1  <= {1'b0,c[2:0]} + {1'b0,d[2:0]};
            y       <= temp_0 * temp_1;
        end
    end

endmodule

