// compiler directives
`include "layer_selector.sv"
`include "layer_composite.sv"
`include "base_rom.sv"
`include "pattern_rom.sv"

// wrapper
module design_top (
  output logic [255:0] frame_out
);
  
  // Declare 256 bit signal wires
  // represents physical copper traces printed on board
  logic [255:0] w_noise;
  logic [1:0] w_sel;
  logic [255:0] w_outline;
  logic [255:0] w_fill;
  logic [255:0] w_pattern;
  
  // chip #1: selector from RNG
  layer_selector u_selector (
    .noise (w_noise),
    .sprite_sel (w_sel)
  );
  
  // chip #2: ROM (read only memory) for horse base
  base_rom u_baserom (
    .pose_sel (w_sel),
    .outline (w_outline),
    .fill (w_fill)
  );
  
  // chip #3: ROM (read only memory) for horse patterns
  pattern_rom u_patrom (
    .pat_sel (w_sel),
    .pattern (w_pattern)
  );
  
  // chip #4: compositor chip block
  layer_composite u_compositor (
    .outline (w_outline),
    .fill (w_fill),
    .pattern (w_pattern),
    .frame_out (frame_out)
  );
  
endmodule
  