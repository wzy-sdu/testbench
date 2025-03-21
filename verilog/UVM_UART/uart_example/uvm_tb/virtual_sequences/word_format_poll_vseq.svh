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
class word_format_poll_vseq extends uart_vseq_base;

`uvm_object_utils(word_format_poll_vseq)

function new(string name = "word_format_poll_vseq");
  super.new(name);
endfunction

task body;
  uart_config_seq setup = uart_config_seq::type_id::create("setup");
  uart_host_rx_seq host_rx = uart_host_rx_seq::type_id::create("host_rx");
  uart_host_tx_seq host_tx = uart_host_tx_seq::type_id::create("host_tx");
  uart_rx_seq rx_serial = uart_rx_seq::type_id::create("rx_serial");
  bit[7:0] lcr;
  bit[15:0] divisor;
  bit[1:0] fcr;//没用上

  lcr = 0;
  divisor = 2;

  host_rx.no_rx_chars = 2;
  host_tx.no_tx_chars = 2;
  rx_serial.no_rx_chars = 2;
  rx_serial.no_errors = 1;

//  repeat(64) begin
repeat(2) begin//2

    assert(setup.randomize() with {setup.LCR == lcr;//[6:0]==[7:0] = 0
                                   setup.DIV == divisor;});//= 2
    setup.start(apb);//reg预写入、读取

    rx_serial.baud_divisor = divisor;//2
    rx_serial.lcr = lcr;// 0

    rx_uart_config.baud_divisor = divisor;//2
    rx_uart_config.lcr = lcr;//0
    tx_uart_config.baud_divisor = divisor;//2
    tx_uart_config.lcr = lcr;//0

    fork//并行
      host_rx.start(apb);
      host_tx.start(apb);//看不到tx结果
      rx_serial.start(uart);
    join
    lcr++;
  end
#30000;
endtask: body

endclass: word_format_poll_vseq
