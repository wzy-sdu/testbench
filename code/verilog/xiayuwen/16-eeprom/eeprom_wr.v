`timescale 1ns/1ns
module EEPROM_WR (sda, scl, ack, reset, clk, wr, rd, addr, data);
    input reset;
    input clk;
    input wr,rd;
    input[10:0] addr;
    inout sda;
    inout[7:0] data;
    output scl;
    output ack;

reg ack;
reg scl;
reg w_floag, r_floag;
reg ff;
reg[1:0] head_buf;
reg[1:0] stop_buf;
reg[7:0] sh8out_buf;
reg[8:0] sh8out_state;
reg[9:0] sh8in_state;
reg[2:0] head_state;
reg[2:0] stop_state;
reg[10:0] main_state;
reg[7:0] data_from_rm;
reg link_sda;
reg link_read;
reg link_write;
reg link_head;
reg link_stop;
wire sda1, sda2, sda3, sda4;

//----串行数据在开关控制下有秩序的输出或输入
assign sda1 = (link_head)?      head_buf[1]     : 1'b0;
assign sda2 = (link_write)?     sh8out_buf[7]   : 1'b0;
assign sda3 = (link_stop)?      stop_buf[1]     : 1'b0;
assign sda4 = (sda1 | sda2 | sda3);
assign sda = (link_sda)?        sda4            : 1'bz;
assign data = (link_read)?      data_from_rm    : 8'hzz;
//-----主状态机状态定义
parameter
        idle =          11'b00000000001,
        ready =         11'b00000000010,
        write_start =   11'b00000000100,
        ctrl_write =    11'b00000001000,
        addr_write =    11'b00000010000,
        data_write =    11'b00000100000,
        read_start =    11'b00001000000,
        ctrl_read =     11'b00010000000,
        data_read =     11'b00100000000,
        stop =          11'b01000000000,
        ackn =          11'b10000000000,
//------并行数据串行输出状态
        sh8out_bit7 = 9'b000000001,
        sh8out_bit6 = 9'b000000010,
        sh8out_bit5 = 9'b000000100,
        sh8out_bit4 = 9'b000001000,
        sh8out_bit3 = 9'b000010000,
        sh8out_bit2 = 9'b000100000,
        sh8out_bit1 = 9'b001000000,
        sh8out_bit0 = 9'b010000000,
        sh8out_end = 9'b100000000;
//-------串行数据并行输出状态
parameter
        sh8in_begin = 10'b0000000001,
        sh8in_bit7 = 10'b0000000010,
        sh8in_bit6 = 10'b0000000100,
        sh8in_bit5 = 10'b0000001000,
        sh8in_bit4 = 10'b0000010000,
        sh8in_bit3 = 10'b0000100000,
        sh8in_bit2 = 10'b0001000000,
        sh8in_bit1 = 10'b0010000000,
        sh8in_bit0 = 10'b0100000000,
        sh8in_end = 10'b1000000000,
//------启动状态
        head_begin = 3'b001,
        head_bit = 3'b010,
        head_end = 3'b100,
//-----停止状态
        stop_begin = 3'b001,
        stop_bit = 3'b010,
        stop_end = 3'b100,

        YES = 1,
        NO = 0;

//--------产生串行时钟scl，为输入时钟的二分频
always @(negedge clk) begin
    if(reset)
    scl <= 0;
    else
    scl <= ~scl;
end
//------主状态机程序
always @(posedge clk) begin
    if(reset)
    begin
        link_read <= NO;
        link_write <= NO;
        link_head <= NO;
        link_stop <= NO;
        link_sda <= NO;
        ack <= 0;
        r_floag <= 0;
        w_floag <= 0;
        ff <= 0;
        main_state <= idle;
    end
    else
    begin
        casex (main_state)
            idle:
            begin
                link_read <= NO;
                link_write <= NO;
                link_head <= NO;
                link_stop <= NO;
                link_sda <= NO;
                if(wr)
                begin
                    w_floag <= 1;
                    main_state <= ready;
                end
                else if(rd)
                begin
                    r_floag <= 1;
                    main_state <= ready;
                end
                else
                begin
                    w_floag <= 0;
                    r_floag <= 0;
                    main_state <= idle;
                end
            end

            ready:
            begin
                link_read <= NO;
                link_write <= NO;
                link_head <= YES;
                link_stop <= NO;
                link_sda <= YES;
                head_buf[1:0] <= 2'b10;
                stop_buf[1:0] <= 2'b01;
                head_state <= head_begin;
                ff <= 0;
                ack <= 0;
                main_state <= write_start;
            end
            write_start:
            begin
                if(ff == 0)
                shift_head;
                else
                begin
                    sh8out_buf[7:0] <= {1'b1, 1'b0, 1'b1, 1'b0, addr[10:8], 1'b0};
                    link_head <= NO;
                    link_write <= YES;
                    ff <= 00;
                    sh8out_state <= sh8out_bit6;
                    main_state <= ctrl_write;
                end
            end
            ctrl_write:
                if(ff == 0)
                    shift8_out;
                else
                begin
                    sh8out_state <= sh8out_bit7;
                    sh8out_buf[7:0] <= addr[7:0];
                    ff <= 0;
                    main_state <= addr_write;
                end
            addr_write:
                if(ff == 0)
                    shift8_out;
                else
                begin
                    ff <= 0;
                    if(w_floag)
                    begin
                        sh8out_state  <= sh8out_bit7;
                        sh8out_buf[7:0] <= data;
                        main_state <= data_write;
                    end
                    if(r_floag)
                    begin
                        head_buf <= 2'b10;
                        head_state <= head_begin;
                        main_state <= read_start;
                    end
                end
            read_start:
                if(ff == 0)
                shift_head;
                else
                begin
                    sh8out_buf <= {1'b1, 1'b0, 1'b1, 1'b0, addr[10:8], 1'b1};
                    link_head <= NO;
                    link_sda <= YES;
                    link_write <= YES;
                    ff <= 00;
                    sh8out_state <= sh8out_bit6;
                    main_state <= ctrl_read;
                end
            ctrl_read:
                if(ff == 0)
                shift8_out;
                else
                begin
                    link_sda <= NO;
                    link_write <= NO;
                    ff <= 00;
                    sh8out_state <= sh8in_begin;
                    main_state <= data_read;
                end
            data_read:
                if(ff == 0)
                shift8in;
                else
                begin
                    link_stop <= YES;
                    link_sda <= YES;
                    stop_state <= stop_bit;
                    ff <= 0;
                    main_state <= stop;
                end
            stop:
                if(ff == 0)
                shift_stop;
                else
                begin
                    ack <= 1;
                    ff <= 0;
                    main_state <= ackn;
                end
            ackn:
                begin
                    ack <= 0;
                    w_floag <= 0;
                    r_floag <= 0;
                    main_state <= idle;
                end
            default:
                main_state <= idle;
        endcase
    end
end
//-------串行数据转换为并行数据任务
task shift8in;
begin
    casex (sh8in_state)

        sh8in_begin:
            sh8in_state <= sh8in_bit7;
        sh8in_bit7:
            if(scl)
            begin
                data_from_rm[7] <= sda;
                sh8in_state <= sh8in_bit6;
            end
            else
            sh8in_state <= sh8in_bit7;
        sh8in_bit6:
            if(scl)
            begin
                data_from_rm[6] <= sda;
                sh8in_state <= sh8in_bit5;
            end
            else
            sh8in_state <= sh8in_bit6;
        sh8in_bit5:
            if(scl)
            begin
                data_from_rm[5] <= sda;
                sh8in_state <= sh8in_bit4;
            end
            else
            sh8in_state <= sh8in_bit5;
        sh8in_bit4:
            if(scl)
            begin
                data_from_rm[4] <= sda;
                sh8in_state <= sh8in_bit3;
            end
            else
            sh8in_state <= sh8in_bit4;
        sh8in_bit3:
            if(scl)
            begin
                data_from_rm[3] <= sda;
                sh8in_state <= sh8in_bit2;
            end
            else
            sh8in_state <= sh8in_bit3;
        sh8in_bit2:
            if(scl)
            begin
                data_from_rm[2] <= sda;
                sh8in_state <= sh8in_bit1;
            end
            else
            sh8in_state <= sh8in_bit2;
        sh8in_bit1:
            if(scl)
            begin
                data_from_rm[1] <= sda;
                sh8in_state <= sh8in_bit0;
            end
            else
            sh8in_state <= sh8in_bit1;
        sh8in_bit0:
            if(scl)
            begin
                data_from_rm[0] <= sda;
                sh8in_state <= sh8in_end;
            end
            else
            sh8in_state <= sh8in_bit0;
        sh8in_end:
            if(scl)
            begin
                link_read = YES;
                ff <= 1;
                sh8in_state <= sh8in_bit7;
            end
            else
            sh8in_state <= sh8in_end;
        default:
            begin
                link_read <= NO;
                sh8in_state <= sh8in_bit7;
            end
    endcase
end
endtask
//--------并行数据转换为串行数据任务
task shift8_out;
begin
    casex (sh8out_state)
        sh8out_bit7:
            if(!scl)
            begin
                link_sda <= YES;
                link_write <= YES;
                sh8out_state <= sh8out_bit6;
            end
            else
            sh8out_state <= sh8out_bit7;
        sh8out_bit6:
            if(!scl)
            begin
                link_sda <= YES;
                link_write <= YES;
                sh8out_state <= sh8out_bit5;
                sh8out_buf <= sh8out_buf << 1;
            end
            else
            sh8out_state <= sh8out_bit6;
        sh8out_bit5:
            if(!scl)
            begin
                sh8out_state <= sh8out_bit4;
                sh8out_buf <= sh8out_buf << 1;
            end
            else
            sh8out_state <= sh8out_bit5;
        sh8out_bit4:
            if(!scl)
            begin
                sh8out_state <= sh8out_bit3;
                sh8out_buf <= sh8out_buf << 1;
            end
            else
            sh8out_state <= sh8out_bit4;
        sh8out_bit3:
            if(!scl)
            begin
                sh8out_state <= sh8out_bit2;
                sh8out_buf <= sh8out_buf << 1;
            end
            else
            sh8out_state <= sh8out_bit3;
        sh8out_bit2:
            if(!scl)
            begin
                sh8out_state <= sh8out_bit1;
                sh8out_buf <= sh8out_buf << 1;
            end
            else
            sh8out_state <= sh8out_bit2;
        sh8out_bit1:
            if(!scl)
            begin
                sh8out_state <= sh8out_bit0;
                sh8out_buf <= sh8out_buf << 1;
            end
            else
            sh8out_state <= sh8out_bit1;
        sh8out_bit0:
            if(!scl)
            begin
                sh8out_state <= sh8out_end;
                sh8out_buf <= sh8out_buf << 1;
            end
            else
            sh8out_state <= sh8out_bit0;
        sh8out_end:
            if(!scl)
            begin
                link_sda <= NO;
                link_write <= NO;
                ff <= 1;
            end
            else
            sh8out_state <= sh8out_end; 
    endcase
end
endtask
//--------输出启动信号任务
task shift_head;
begin
    casex(head_state)
        head_begin:
            if(!scl)
            begin
                link_write <= NO;
                link_sda <= YES;
                link_head <= YES;
                head_state <= head_bit;
            end         
            else
            head_state <= head_begin;
        head_bit:
            if(scl)
            begin
                ff <= 1;
                head_buf <= head_buf << 1;
                head_state <= head_end;
            end
            else
            head_state <= head_bit;
        head_end:
            if(!scl)
            begin
                link_head <= NO;
                link_write <= YES;
            end
            else
            head_state <= head_end;
    endcase
end
endtask
//------输出停止信号任务
task shift_stop;
begin
    casex(stop_state)
        stop_begin:
            if(!scl)
            begin
                link_sda <= YES;
                link_write <= NO;
                link_stop <= YES;
                stop_state <= stop_bit;
            end
            else
            stop_state <= stop_begin;
        stop_bit:
            if(scl)
            begin
                stop_buf <= stop_buf << 1;
                stop_state <= stop_end;
            end
            else
            stop_state <= stop_bit;
        stop_end:
            if(!scl)
            begin
                link_head <= NO;
                link_stop <= NO;
                link_sda <= NO;
                ff <= 1;
            end
            else
            stop_state <= stop_end;
    endcase
end
endtask
endmodule