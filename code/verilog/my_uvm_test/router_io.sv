interface router_io(input bit clock);
  logic		reset_n;
  logic [15:0]	din;
  logic [15:0]	frame_n;
  logic [15:0]	valid_n;
  logic [15:0]	dout;
  logic [15:0]	valido_n;
  logic [15:0]	busy_n;
  logic [15:0]	frameo_n;

  clocking cb @(posedge clock);
    default input #1 output #1;
    output reset_n;
    output din;
    output frame_n;
    output valid_n;
    input dout;
    input valido_n;
    input busy_n;
    input frameo_n;
  endclocking

  modport TB(clocking cb, output reset_n);

  //Lab 1 - Task 2, Step 3
  //
  //Declare a clocking block driven by posedge of signal clock
  //Add all signals requir  `ed to connect test program to the DUT
  //All directions must be with respect to test program
  //ToDo

    //Lab 1 - Task 2, Step 4
    //
    //Add input and output skew in clocking block(optional)
    //ToDo

  //Lab 1 - Task 2, Step 5
  //
  //Create a modport to connect to test program
  //Arguments should list clocking block and all other potential asynch signals
  //ToDo

endinterface: router_io