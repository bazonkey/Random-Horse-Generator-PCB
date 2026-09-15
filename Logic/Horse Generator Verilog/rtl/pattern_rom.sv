module pattern_rom #(
  parameter NUM_PATTERNS = 1
)(
  // define output port: 256 bit, 16x16  
  input logic [1:0] pat_sel,
  output logic [255:0] pattern
);

	// arrays for sprite variations
  logic [255:0] PATTERN_ARRAY [0:NUM_PATTERNS-1];
  
  initial begin
    // pose 0: standing horse
    PATTERN_ARRAY[0] = {
    16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000,
    16'h03C0, 16'h03C0, 16'h03C0, 16'h03C0,
    16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000
  	};
  end
  
  assign pattern = PATTERN_ARRAY[pat_sel];
endmodule

// design module represents actual hardware