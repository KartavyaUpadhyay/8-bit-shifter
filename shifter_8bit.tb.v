`timescale 1ns/1ns                                                                                                        
`include "shifter_8bit_rtl.v"
module test_shifter;
    reg  [7:0] DATA_IN;
    reg  [2:0] N;
    reg        DIR;
    reg        Clock;
    wire [7:0] DATA_OUT;

    // Instantiate the shifter module
    shifter_8bit uut (
        .DATA_IN(DATA_IN),
        .N(N),
        .DIR(DIR),
        .Clock(Clock),
        .DATA_OUT(DATA_OUT)
    );

    // Clock generation: 10ns period
    initial Clock = 0;
    always #5 Clock = ~Clock;


    // Apply test inputs
    initial begin
        $monitor("Time = %0t ns | DATA_IN = %b | N = %0d | DIR = %b | DATA_OUT = %b",
                 $time, DATA_IN, N, DIR, DATA_OUT);
 $fsdbDumpvars();
        // Test 1: Shift left by 2
        DATA_IN = 8'b10101010;
        N       = 3'd2;
        DIR     = 1'b0;  // left
        #10;

        // Test 2: Shift right by 3
        DATA_IN = 8'b11110000;
        N       = 3'd3;
        DIR     = 1'b1;  // right
        #10;

        // Test 3: Shift left by 0
        DATA_IN = 8'b11001100;
        N       = 3'd0;
        DIR     = 1'b0;
        #10;

        // Test 4: Shift right by 7
        DATA_IN = 8'b10000000;
        N       = 3'd7;
        DIR     = 1'b1;
        #10;

        $finish;
    end
endmodule

