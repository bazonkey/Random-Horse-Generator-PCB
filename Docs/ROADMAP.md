### PHASE 1

##### LOGIC DESIGN \& VERIFICATION

**Goal:** Architect, simulate, and verify all digital hardware logic in software before purchasing components.

**Deliverables:**

* **1 : RTL(register transfer level) circuit design**

  * 1.1 : layer\_composite.sv

    * 3-layer bitwise compositing module
  * 1.2 : tb\_virtual\_screen.sv

    * ASCII console rendering testbench for visual 256-bit frame verification.
  * 1.3 : base\_rom.sv

    * Read-only memory for base shapes.
  * 1.4 : pattern\_rom.sv

    * Read-only memory for patterns.
  * 1.5 : layer\_selector.sv

    * Drive ROM access
  * 1.6 : matrix.sv

    * Drive LED matrix and frame updates into physical multiplexing signals (row selects, column data, clock, latch/OE pulses)
  * 1.7 : user\_input.sv

    * Manage system state with ON/OFF button and Generate button
    * button debouncer
    * FSM (IDLE, GENERATING, DISPLAY\_ON)
  * 1.8 : design\_top.sv

    * Top-level wrapper for all RTL files and wires it all together.
  * 1.9 : LSFR.sv

    * loops thru 2^N-1 values, number is sampled at button press
* **2 : Verification**

  * 2.1 : tb\_virtual\_screen.sv

    * Display module looping thru 256-bit output array and renders the frame with ASCII characters
  * 2.2 : testbench.sv

    * Top-level simulation harness



##### RANDOMIZATION

* **3 : Randomization**

  * **3.1 :** Random seed generator feature in layer\_selector
* **4 : Procedural Generation**

  * Design a pixel art app that outputs hex maps

    * (could be physical touchpad with IoT connection)
* **5 : Art**

  * Minimum 2 outline/fill pairs



### PHASE 2

##### HARDWARE SELECTION



### PHASE 3

##### CARRIER BOARD DESIGN



### PHASE 4

##### ASSEMBLY

