
`define halfperiod 20

module test;
reg clk,rst;
reg [23:0] data;
wire x,z;
assign x = data[23];

initial begin
    clk = 0;
    rst = 1;
    #2 rst = 0;
    #30 rst = 1;
    data = 20'b1100_1001_0000_1001_0100;
    #(`halfperiod*1000) $stop;
end
always#(`halfperiod) clk = ~clk;
always @(posedge clk ) begin
    #2 data = {data[22:0], data[23]};
end
sequential_detector_shift_register test (clk, rst, x, z);
    
`ifdef FSDB
initial begin
	$fsdbDumpfile("sequential_detector_shift_register.fsdb");
	$fsdbDumpvars;
end
`endif    
endmodule
