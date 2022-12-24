module floating_MAC_16(CLK, RESETn, data_in_A, data_in_B, data_in_C, data_out);
    input           CLK, RESETn;
    input   [15:0]  data_in_A, data_in_B, data_in_C;
    output  [15:0]  data_out;

    wire    [16:0]  data_out_mul;
    wire    [15:0]  data_out_C;
    wire            Cout, underflow;

    // Sign:        1 bit
    // Exponent:    5 bits
    // Fraction:    11 bits

    // Exponent bias: 15 -> range: -15 ~ 16

    // result = (-1)^Sign * (1 + Fraction) * 2^(Exponent  - Bias)

    floating_mul_16 MUL(CLK, RESETn, data_in_A, data_in_B, data_in_C, data_out_mul, data_out_C, Cout, underflow);
    floating_add_16 ADD(CLK, RESETn, data_out_mul, data_out_C, Cout, underflow, data_out);

endmodule

module floating_mul_16(CLK, RESETn, data_in_01, data_in_02, data_in_03, data_out, data_out_03, Cout, underflow);

// The results are sent out by increasing the exponent bit by one digit 
// so that the final operation after the adder can determine whether overflow is possible.
// Therefore data_out is 17-bits

    input           CLK, RESETn;
    input   [15:0]  data_in_01, data_in_02, data_in_03;
    output  [16:0]  data_out;      // additional 2 bits for Exponent, except sign bit
    output  [15:0]  data_out_03;
    output          Cout, underflow;

    reg             sign_01;
    reg             sign_02;
    reg             sign_out;
    reg     [ 6:0]  expo_01; // additional bits for checking overflow
    reg     [ 6:0]  expo_02;
    reg     [ 9:0]  frac_01;
    reg     [ 9:0]  frac_02;
    reg     [ 6:0]  expo_out;
    wire    [ 9:0]  frac_temp;
    reg     [15:0]  buffer[1:0];
    wire            cout;

    always @(posedge CLK or negedge RESETn) begin
        if(!RESETn) begin
            sign_01     <= 1'd0;
            sign_02     <= 1'd0;
            expo_01     <= 7'd0;
            expo_02     <= 5'd0;
            frac_01     <= 11'd0;
            frac_02     <= 10'd0;
            buffer[0]   <= 15'd0;      
        end else begin
            sign_01     <= data_in_01[15];
            sign_02     <= data_in_02[15];
            expo_01     <= {2'b0, data_in_01[14:10]};
            expo_02     <= data_in_02[14:10];
            frac_01     <= data_in_01[9:0];
            frac_02     <= data_in_02[9:0];
            buffer[0]   <= data_in_03;
        end
    end

    array_mult AMT(frac_01, frac_02, frac_temp, cout, CLK, RESETn);

    always @(posedge CLK or negedge RESETn) begin
        if(!RESETn) begin
            sign_out <= 1'd0;
            expo_out <= 7'd0;
        end else begin
            sign_out <= data_in_01[15] ^ data_in_02[15];
            if(cou == 1) begin
                if(data_in_01[14:10] + data_in_02[14:10] < 15) begin
                    sign_out <= 1'd0;
                    expo_out <= 7'd0;
                end else begin
                    expo_out <= data_in_01[14:10] + data_in_02[14:10] - 15;
                end
            end else begin
                if(data_in_01[14:10] + data_in_02[14:10] < 14) begin
                    sign_out <= 1'd0;
                    expo_out <= 7'd0;
                end else begin
                    expo_out <= data_in_01[14:10] + data_in_02[14:10] - 14;
                end
            end
        end
        buffer[1] <= buffer[0];
    end

    assign underflow = ((data_in_01[14:10] + data_in_02[14:10] < 15) || (data_in_01[14:10] + data_in_02[14:10] < 14)) ? 1 : 0;

    assign data_out     = {sign_out, expo_out, frac_temp};
    assign data_out_03  = buffer[1];
    assign Cout         = cout;

endmodule

module floating_add_16(CLK, RESETn, data_in_01, data_in_02, Cout, underflow, data_out);
    input           CLK, RESETn;
    input   [16:0]  data_in_01;
    input   [15:0]  data_in_02;
    input           Cout, underflow;
    output  [15:0]  data_out;

    reg             sign_01;
    reg             sign_02;
    reg             sign_temp;
    reg             sign_out;
    reg     [ 6:0]  expo_01; // additional bits for checking overflow
    reg     [ 6:0]  expo_02;
    reg     [ 9:0]  frac_01;
    reg     [ 9:0]  frac_02;
    reg     [ 6:0]  expo_temp;
    reg     [ 6:0]  expo_temp_out; 
    reg     [10:0]  frac_temp; // additional bit for checking carry out
    reg     [ 9:0]  frac_temp_out;

    always @(posedge CLK or negedge RESETn) begin
        if(!RESETn) begin
            sign_01     <= 1'd0;
            sign_02     <= 1'd0;
            expo_01     <= 7'd0;
            expo_02     <= 5'd0;
            frac_01     <= 11'd0;
            frac_02     <= 10'd0;
        end else begin
            sign_01     <= data_in_01[16];
            sign_02     <= data_in_02[15];
            expo_01     <= {1'b0, data_in_01[15:10]};
            expo_02     <= {2'b0, data_in_02[14:10]};
            if(sign_01 == 1) begin
                frac_01     <= ~(data_in_01[9:0]) + 1'b1; // 2's complement
            end else begin
                frac_01     <= data_in_01[9:0];
            end
            if(sign_02 == 1) begin
                frac_02     <= ~(data_in_02[9:0]) + 1'b1; // 2's complement
            end else begin
                frac_02     <= data_in_02[9:0];
            end
        end
    end

    always @(posedge CLK or negedge RESETn) begin // normalization
        if(!RESETn) begin
            sign_temp <= 1'd0;
            expo_temp <= 7'd0;
            frac_temp <= 11'd0;
        end else if(expo_01 > expo_02) begin
            expo_temp <= expo_01;
            frac_temp <= frac_01 + (frac_02 >> (expo_01 - expo_02));
            sign_temp <= sign_01 ^ sign_02;
        end else begin
            expo_temp <= expo_02;
            frac_temp <= frac_02 + (frac_01 >> (expo_02 - expo_01));
            sign_temp <= sign_01 ^ sign_02;
        end
    end

    always @(posedge CLK or negedge RESETn) begin
        if(!RESETn) begin
            sign_out        <= 1'd0;
            expo_temp_out   <= 7'd0;
            frac_temp_out   <= 10'd0;
        end else if(frac_temp[10] == 1) begin // carry out
            expo_temp_out <= expo_temp << 1;
            frac_temp_out <= frac_temp[9:0];
            sign_out      <= sign_temp;
            if((expo_temp_out[5] == 1) || (expo_temp_out[6] == 1)) begin // overflow occurred
                expo_temp_out   <= 7'd0; // flush to zero
                frac_temp_out   <= 11'd0; // flush to zero
                sign_out        <= 1'd0;
            end
        end else if((expo_temp_out[5] == 1) || (expo_temp_out[6] == 1) || underflow == 1) begin // overflow, underflow occurred
            expo_temp_out   <= 7'd0;  // flush to zero
            frac_temp_out   <= 11'd0; // flush to zero
            sign_out        <= 1'd0;
        end else begin
            expo_temp_out <= expo_temp;
            frac_temp_out <= frac_temp[9:0];
            sign_out      <= sign_temp;
        end
    end

    assign data_out     = {sign_out, expo_temp_out[4:0], frac_temp_out};

endmodule