// declare new digital logic hardware block
module layer_composite (
  // define output port: 256 bit, 16x16  
  input logic [255:0] outline,
  input logic [255:0] fill,
  input logic [255:0] pattern,
  output logic [255:0] frame_out
);

    // signal operation
    assign frame_out = outline | (fill & pattern);

endmodule

// design module represents actual hardware