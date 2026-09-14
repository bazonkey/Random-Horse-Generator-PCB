// declare new digital logic hardware block
module bitmap_xor (
  // define output port: 256 bit, 16x16  
  output logic [255:0] frame_out
);
  
	// create internal 256-bit signal vector to hold outline bits
    logic [255:0] outline;
    assign outline = 256'h0000_0000_3FFC_2004_2004_2004_2004_2004_2004_2004_2004_2004_2004_3FFC_0000_0000;

  	// create 256 bit signal vector to hold fill shape
    logic [255:0] fill;
  	assign fill = 256'h0000_0000_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_0000_0000;

  
    // create 256-bit signal vector
    logic [255:0] pattern;
  	// stack 16 16-bit hex rows to make a pattern
    assign pattern = {
        16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000,
        16'h03C0, 16'h03C0, 16'h03C0, 16'h03C0,
        16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000
    };

    // signal operation
    assign frame_out = outline | (fill & pattern);

endmodule

// design module represents actual hardware