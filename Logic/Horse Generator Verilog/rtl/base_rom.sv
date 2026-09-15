module base_rom #(
  parameter NUM_POSES = 1
)(
  // define output port: 256 bit, 16x16  
  input logic [1:0] pose_sel,
  output logic [255:0] outline,
  output logic [255:0] fill
);

	// arrays for sprite variations
  logic [255:0] OUTLINE_ARRAY [0:NUM_POSES-1];
  logic [255:0] FILL_ARRAY [0:NUM_POSES-1];
  
  initial begin
    // pose 0: standing horse
    OUTLINE_ARRAY[0] = 256'h0000_0000_3FFC_2004_2004_2004_2004_2004_2004_2004_2004_2004_2004_3FFC_0000_0000;
    FILL_ARRAY[0] = 256'h0000_0000_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_0000_0000;
  end
  
  assign outline = OUTLINE_ARRAY[pose_sel];
  assign fill = FILL_ARRAY[pose_sel];
endmodule