module fir_filter (
    input clk,
    input rst,
    input signed [7:0] x_in,
    output reg signed [15:0] y_out
);

    // Delay registers
    reg signed [7:0] x1, x2, x3;

    // Fixed FIR coefficients
    parameter signed [7:0] h0 = 1;
    parameter signed [7:0] h1 = 2;
    parameter signed [7:0] h2 = 3;
    parameter signed [7:0] h3 = 4;

    always @(posedge clk or posedge rst)
    begin
        if (rst)
        begin
            x1    <= 0;
            x2    <= 0;
            x3    <= 0;
            y_out <= 0;
        end
        else
        begin
            // FIR calculation
            y_out <= (h0 * x_in) +
                     (h1 * x1)   +
                     (h2 * x2)   +
                     (h3 * x3);

            // Shift register operation
            x3 <= x2;
            x2 <= x1;
            x1 <= x_in;
        end
    end
endmodule

