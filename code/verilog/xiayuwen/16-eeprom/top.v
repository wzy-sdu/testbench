`timescale 1ns/1ns
`define timeslice 200

module top (
    output clk,
    output reset,
    output rd,
    output wr,
    output scl,
    output sda,
    output ack,
    output[10:0] addr,
    output[7:0] data
);

parameter test_numbers = 123;

initial begin
    #(`timeslice*180*test_numbers)$stop;
end

signal #(test_numbers) test1(reset, clk, rd, wr, addr, ack, data);
EEPROM_WR test2(sda, scl, ack, reset, clk, wr, rd, addr, data);
EEPROM test3(scl, sda);
    
endmodule