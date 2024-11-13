`timescale 1ns/1ns
`define halfperiod 50
module sigdata (
    output rst,
    output sclk,
    output [3:0]data,
    input ask_for_data
);
reg [3:0] data;
reg rst, sclk;

initial begin
    rst = 1;
    #10 rst = 0;
    #(`halfperiod*2+3) rst = 1;
end
initial begin
    sclk = 0;
    data = 0;
    #(`halfperiod*1000) $stop;
end
always #(`halfperiod) sclk = ~sclk;
always @(posedge ask_for_data) begin
    #(`halfperiod/2+3) data = data + 1;
end
    
endmodule