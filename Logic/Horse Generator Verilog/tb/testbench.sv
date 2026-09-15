`include "tb_virtual_screen.sv"

module testbench;
    // Signal wire carrying final composed pixel bus
    wire [255:0] frame_bus;

    // 1. Instantiate the Complete Hardware Design
    design_top uut (
        .frame_out (frame_bus)
    );

    // 2. Instantiate Virtual Display Screen
    tb_virtual_screen u_screen (
        .frame_in (frame_bus)
    );

    // 3. Run Simulation Sequence
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        #10; // Allow combinational logic to finish
        
        // Call display task inside virtual screen module
        u_screen.print_screen();

        #10;
        $finish;
    end
endmodule