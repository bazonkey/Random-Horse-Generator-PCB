module pattern_rom (
    input  logic [1:0]   pat_sel,
    output logic [255:0] pattern
);

    // Combinational logic block for pattern ROM read operations
    always_comb begin
        case (pat_sel)
            2'b00: begin
                // Pattern 0
                pattern = 256'h0000_1C00_1C00_1C00_0000_0000_03C0_0FF0_0FF0_03C0_0000_0000_0006_3006_3000;;
            end

            2'b01: begin
                // Pattern 1
                pattern = '0;
            end

            2'b10: begin
                // Pattern 2
                pattern = '0;
            end

            2'b11: begin
                // Pattern 3
                pattern = '0;
            end

            // Catch-all default prevents latch synthesis
            default: begin
                pattern = '0;
            end
        endcase
    end

endmodule