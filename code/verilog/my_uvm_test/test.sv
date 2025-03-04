`timescale 1ns/100ps
// Lab 1 - Task 3, Step 2
// 
// Declare a program block with arguments to connect
// to modport TB declared in interface
program automatic test(router_io.TB rtr_io);
  // Lab 1 - Task 3, Step 3
  // 
  // Declare an initial block 
  // In the initial block print a simple message to the screen
  initial begin
    $display("Lab 1: build a testbench!");
  end

  // Lab 1 - Task 6, Steps 3 and 4 -
  // 
  // Replace $display() in initial block with $vcdpluson
  // Call reset() task
  initial begin
    // $vcdpluson();
    reset();
  end

  // Lab 1 - Task 6, Step 2
  // 
  // Define a task called reset() inside the program to reset DUT per spec.
  // ToDo - Caution!! Do only in Task 6
  task reset();
    rtr_io.reset_n = 1'b0;
    rtr_io.cb.frame_n <= '1;
    rtr_io.cb.valid_n <= '1;
    #2 rtr_io.cb.reset_n <= 1'b1;
    repeat(15) @(rtr_io.cb);
  endtask: reset
endprogram: test