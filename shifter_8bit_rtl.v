module shifter_8bit (
    input  wire [7:0] DATA_IN,    // Input data
    input  wire [2:0] N,          // Number of positions to shift (0–7)
    input  wire       DIR,        // Direction: 0 = left, 1 = right
    input  wire       Clock,      // Clock signal
    output reg  [7:0] DATA_OUT    // Output shifted data
);

always @(posedge Clock) begin
    if (DIR == 1'b0) begin
        // Shift left by N positions
        DATA_OUT <= DATA_IN << N;
    end else begin
        // Shift right by N positions
        DATA_OUT <= DATA_IN >> N;
    end
end

endmodule

