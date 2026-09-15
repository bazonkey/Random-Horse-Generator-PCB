module tb_virtual_screen (
    input logic [255:0] frame_in
);
    integer row, col, bit_index;

    // Task that prints the 16x16 matrix to the console
    task print_screen();
        $display("\n=============================");
        $display("   SIMULATED 16x16 DISPLAY   ");
        $display("=============================");

        // Loop through 16 rows from top (15) to bottom (0)
        for (row = 15; row >= 0; row = row - 1) begin
            $write("Row %2d: ", row);
            
            // Loop through 16 columns from left (15) to right (0)
            for (col = 15; col >= 0; col = col - 1) begin
                bit_index = (row * 16) + col;
                
                if (frame_in[bit_index] == 1'b1)
                    $write("X  "); // Pixel ON
                else
                    $write(".  "); // Pixel OFF (Period makes screen easier to read than 'O')
            end
            $write("\n");
        end
        $display("=============================\n");
    endtask

endmodule