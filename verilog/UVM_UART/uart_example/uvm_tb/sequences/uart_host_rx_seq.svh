//----------------------------------------------------------------------
//   Copyright 2012 Mentor Graphics Corporation
//   All Rights Reserved Worldwide
//
//   Licensed under the Apache License, Version 2.0 (the
//   "License"); you may not use this file except in
//   compliance with the License.  You may obtain a copy of
//   the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in
//   writing, software distributed under the License is
//   distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
//   CONDITIONS OF ANY KIND, either express or implied.  See
//   the License for the specific language governing
//   permissions and limitations under the License.
//----------------------------------------------------------------------

class uart_host_rx_seq extends host_if_base_seq;

`uvm_object_utils(uart_host_rx_seq)

rand int no_rx_chars;

constraint char_limit_c { no_rx_chars inside {[1:20]};}

function new(string name = "uart_host_rx_seq");
  super.new(name);
endfunction

task body;
  super.body();
  $display("rx_no_rx_chars = %h", no_rx_chars);

  for(int i = 0; i < no_rx_chars; i++) begin//2
    rm.LSR.read(status, data, .parent(this));
    $display("1_read_LSR = %h", data);

    // Wait for data to be available
    while(!data[0]) begin//==0 No characters in the RX FIFO
      rm.LSR.read(status, data, .parent(this));

  //！！！！！！！！注意，寄存器读出来的PRDATA不一定是本值，看rtl设定！！！！！！！！！！！！！！

      $display("1_read_LSR_data[0] = %h", data);
      cfg.wait_for_clock(10);//IRQ.CLK 
    end
    
    rm.RXD.read(status, data, .parent(this));
    $display("1_read_RXD = %h", data);
  end
endtask: body

endclass: uart_host_rx_seq
/*
while:
cfg.wait_for_clock(10); 等待 10 个时钟周期，然后再次检查 LSR 寄存器的值,
当 data[0] 变为 1 时，表示接收 FIFO 中有数据可用，while 循环结束。
*/
