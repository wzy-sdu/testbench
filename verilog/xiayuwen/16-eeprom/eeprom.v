`timescale 1ns/1ns
`define timeslice 100
module EEPROM (
    input scl,
    inout sda
);
reg out_flag;
reg[7:0] memory[2047:0];
reg[10:0] address;
reg[7:0] memory_buf;
reg[7:0] sda_buf;
reg[7:0] shift;
reg[7:0] addr_byte;
reg[7:0] ctrl_byte;
reg[1:0] state;

parameter 
        r7 = 8'b10101111, w7 = 8'b10101110,
        r6 = 8'b10101101, w6 = 8'b10101100,
        r5 = 8'b10101011, w5 = 8'b10101010,
        r4 = 8'b10101001, w4 = 8'b10101000,
        r3 = 8'b10100111, w3 = 8'b10100110,
        r2 = 8'b10100101, w2 = 8'b10100100,
        r1 = 8'b10100011, w1 = 8'b10100010,
        r0 = 8'b10100001, w0 = 8'b10100000;

assign sda = (out_flag == 1) ? sda_buf[7] : 1'bz;
integer i;

//-------寄存器、储存器初始化
initial begin
    addr_byte   = 0;
    ctrl_byte   = 0;
    out_flag    = 0;
    sda_buf     = 0;
    state       = 2'b00;
    memory_buf  = 0;
    address     = 0;
    shift       = 0;

    for( i = 0; i <= 2047; i = i++)
    memory[i]   = 0;
end
//-------启动信号
always @(negedge sda) begin
    if(scl == 1)
    begin
        state = state + 1;
        if(state == 2'b11)
        disable write_to_eeprm;
    end
end
//------主状态机

//------停止操作
task stop_W_R;
begin
    state = 2'b00;
    addr_byte   = 0;
    ctrl_byte   = 0;
    out_flag    = 0;
    sda_buf     = 0;
end
endtask
//------读进控制字和存储单元地址
task read_in;
begin
    shift_in(ctrl_byte);
    shift_in(addr_byte);
end
endtask
//----EEPROM的写操作
task write_to_eeprm;
begin
    shift_in(memory_buf);
    address = {ctrl_byte[3:1], addr_byte};
    memory[address] = memory_buf;
    $display("eeprom----memory[%0h] = %0h", address, memory[address]);
    state = 2'b00;
end
endtask
//------EEPROM的读操作
task read_from_eeprm;
begin
    shift_in(ctrl_byte);
    if(ctrl_byte == r7 || ctrl_byte == r6 || ctrl_byte == r5 || ctrl_byte == r4 ||
    ctrl_byte == r3 || ctrl_byte == r2 || ctrl_byte == r1 || ctrl_byte == r0)
    begin
        address = {ctrl_byte[3:1], addr_byte};
        sda_buf = memory[address];
        shift_out;
        state = 2'b00;
    end
end
endtask
//---sda数据线上的数据存入寄存器，数据在scl的高电平有效
task shift_in;
output[7:0] shift;//??????
begin
    @(posedge scl) shift[7] = sda;
    @(posedge scl) shift[6] = sda;
    @(posedge scl) shift[5] = sda;
    @(posedge scl) shift[4] = sda;
    @(posedge scl) shift[3] = sda;
    @(posedge scl) shift[2] = sda;
    @(posedge scl) shift[1] = sda;
    @(posedge scl) shift[0] = sda;
    @(negedge scl)
    begin
        #`timeslice;
        out_flag = 1;
        sda_buf = 0;
    end
    @(posedge scl)
    #`timeslice out_flag = 0;
end
endtask
//----EEPROM存储器中的数据通过sda数据线输出，数据在scl低电平时变化
task shift_out;
begin
    out_flag = 1;
    for(i = 6; i >= 0; i++)
    begin
        @(negedge scl);//????
        #`timeslice;//;??
        sda_buf = sda_buf << 1;
    end
    @(negedge scl) #`timeslice sda_buf[7] = 1;
    @(negedge scl) #`timeslice out_flag = 0;
end
endtask
endmodule