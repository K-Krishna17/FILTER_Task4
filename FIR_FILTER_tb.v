`timescale 1ns/1ps

module tb_fir_filter;

    reg clk;
    reg rst;
    reg signed [7:0] x_in;
    wire signed [15:0] y_out;

    // Instantiate DUT
    fir_filter uut (
        .clk(clk),
        .rst(rst),
        .x_in(x_in),
        .y_out(y_out)
    );

    // Clock generation (10 ns period)
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial
    begin
        rst = 1;
        x_in = 0;

        #20;
        rst = 0;

        // Input samples
        #10 x_in = 10;
        #10 x_in = 20;
        #10 x_in = 30;
        #10 x_in = 40;
        #10 x_in = 50;
        #10 x_in = 60;
        #10 x_in = 70;
        #10 x_in = 80;

        #50;
        $finish;
    end

    // Monitor signals
    initial
    begin
        $monitor("Time=%0t | Input=%0d | Output=%0d",
                  $time, x_in, y_out);
    end
endmodule

