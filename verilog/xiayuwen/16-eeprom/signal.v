`timescale 1ns/1ns
`define timeslice 200
module signal (reset, clk, rd, wr, addr, ack, data);
output reset;
output clk;
output rd, wr;
output[10:0] addr;
input ack;
inout[7:0] data;

reg reset;
reg clk;
reg rd, wr;
reg w_r;
reg[10:0] addr;
reg[7:0] data_to_eeprom;
reg[10:0] addr_mem[0:255];
reg[7:0] data_mem[0:255];
reg[7:0] rom[1:2047];
integer i, j;
integer  outfile;

parameter test_number = 50;

assign data = (w_r)? 8'bz : data_to_eeprom;

//---------时钟信号输入
always #(`timeslice/2)
clk = ~clk;
//---------读写信号输入
initial begin
    reset = 1;
    i = 0;
    j = 0;
    w_r = 0;
    clk = 0;
    rd = 0;
    wr = 0;
    #1000;
    reset = 0;

    repeat(test_number)
    begin
        #(5*`timeslice);
        wr = 1;
        #(`timeslice);
        wr = 0;
        @(posedge ack);
    end
    #(10*`timeslice);
    w_r = 1;
    repeat(test_number)
    begin
        #(5*`timeslice);
        rd = 1;
        #(`timeslice);
        rd = 0;
        @(posedge ack);
    end
end
//---------写操作
initial begin
    $display("writing------writing------writing------writing");
    #(2*`timeslice);
    for(i = 0; i <= test_number; i++)
    begin
        addr = addr_mem[i];
        data_to_eeprom = data_mem[i];
        $fdisplay(outfile, "@%0h %0h", addr, data_to_eeprom);
        @(posedge ack);
    end
end
//---------读操作
initial begin
    @(posedge w_r)
    begin
        addr = addr_mem[0];
        $fclose(outfile);
        $readmemh("./eeprom.dat", rom);

        $display("begin reading-----reading-----reading-----reading");
        for(j = 0; j <= test_number; j++)
        begin
            addr = addr_mem[j];
            @(posedge ack);
            if(data == rom[addr])
            $display("data%0h==rom[%0h]---read right!", data, addr);
            else
            $display("data%0h!=[%0h]---read wrong!", data, addr);
        end
    end
end
initial begin
    outfile = $fopen("./eeprom.dat");
    $readmemh("./addr.dat", addr_mem);
    $readmemh("./data.dat", data_mem);
end
endmodule