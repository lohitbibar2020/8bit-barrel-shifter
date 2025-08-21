module Barrel_shifter8_lsr(
    input  [7:0] data_in,   // Input data
    input  [2:0] shift_amt, // Shift amount (0 to 7)
    output [7:0] data_out   // Shifted output
);

    // Barrel shifter implemented using case
    assign data_out = (shift_amt == 3'd0) ? data_in :
                      (shift_amt == 3'd1) ? {1'b0, data_in[7:1]} :
                      (shift_amt == 3'd2) ? {2'b00, data_in[7:2]} :
                      (shift_amt == 3'd3) ? {3'b000, data_in[7:3]} :
                      (shift_amt == 3'd4) ? {4'b0000, data_in[7:4]} :
                      (shift_amt == 3'd5) ? {5'b00000, data_in[7:5]} :
                      (shift_amt == 3'd6) ? {6'b000000, data_in[7:6]} :
                                             {7'b0000000, data_in[7]};
endmodule

