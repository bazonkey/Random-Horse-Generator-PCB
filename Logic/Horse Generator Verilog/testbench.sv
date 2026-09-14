module testbench;
    // Declares 256-bit wire holding pixel data
    wire [255:0] frame_out;
  	// create 3 integer variables
    integer row, col, bit_index;

  // Instantiate your XOR module (design under test)
    bitmap_xor dut (
      	// connects frame_out wire to frame_out output port
        .frame_out(frame_out)
    );

    initial begin // t = 0
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        #10; // Delay by 10 time units

        // --- ASCII SCREEN DISPLAY TASK ---
        $display("\n=============================");
        $display("   SIMULATED 16x16 DISPLAY   ");
        $display("=============================");

        // Loop through 16 rows from top (15) to bottom (0)
        for (row = 15; row >= 0; row = row - 1) begin
            $write("Row %2d: ", row);
            
            // Loop through 16 columns from left (15) to right (0)
            for (col = 15; col >= 0; col = col - 1) begin
                bit_index = (row * 16) + col;
                
                if (frame_out[bit_index] == 1'b1)
                  $write("X  "); // Pixel ON
                else
                  $write("O  "); // Pixel OFF
            end
            $write("\n"); // New line after each row
        end

        $display("=============================\n");
        $finish;
    end
endmodule

// testbench runs on CPU