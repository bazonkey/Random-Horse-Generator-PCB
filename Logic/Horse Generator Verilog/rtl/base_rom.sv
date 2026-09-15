module base_rom (
    input  logic [1:0]   pose_sel,
    output logic [255:0] outline,
    output logic [255:0] fill
);

    // Combinational logic block for ROM read operations
    always_comb begin
        case (pose_sel)
            2'b00: begin
                // Pose 0: Standing Horse
                outline = 256'h0000_0000_3FFC_2004_2004_2004_2004_2004_2004_2004_2004_2004_2004_3FFC_0000_0000;
                fill    = 256'h0000_0000_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_3FFC_0000_0000;
            end
            
            2'b01: begin
                // Pose 1:
                outline = '0;
                fill    = '0;
            end

            2'b10: begin
                // Pose 2: 
                outline = '0;
                fill    = '0;
            end

            2'b11: begin
                // Pose 3: 
                outline = '0;
                fill    = '0;
            end

            // Catch-all default prevents unintended latches
            default: begin
                outline = '0;
                fill    = '0;
            end
        endcase
    end

endmodule