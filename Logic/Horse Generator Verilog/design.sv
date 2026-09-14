// declare new digital logic hardware block
module bitmap_xor (
  // define output port: 256 bit, 16x16  
  output logic [255:0] frame_out
);
  
	// create internal 256-bit signal vector to hold bg bitmap
    logic [255:0] solid_square;
    // set all bits to HIGH using replication operator
    assign solid_square = {256{1'b1}};

  	// create 256-bit signal vector
    logic [255:0] spot_4x4;
  	// stack 16 16-bit hex rows to make a pattern
    assign spot_4x4 = {
        16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000,
        16'h03C0, 16'h03C0, 16'h03C0, 16'h03C0,
        16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000
    };

    // signal operation
    assign frame_out = solid_square & spot_4x4;

endmodule

// design module represents actual hardware