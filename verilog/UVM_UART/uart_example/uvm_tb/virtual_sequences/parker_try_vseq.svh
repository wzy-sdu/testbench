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

class parker_try_vseq extends uart_vseq_base;

`uvm_object_utils(parker_try_vseq)

function new(string name = "parker_try_vseq");
  super.new(name);
endfunction

task body;

   
//  uart_config_seq     setup = uart_config_seq::type_id::create("setup");
//  uart_int_enable_seq ien = uart_int_enable_seq::type_id::create("ien");
//  uart_int_tx_rx_seq  isr = uart_int_tx_rx_seq::type_id::create("isr");
//  uart_rx_seq         rx_serial = uart_rx_seq::type_id::create("rx_serial");
//  uart_host_rx_seq    rx_poll = uart_host_rx_seq::type_id::create("rx_poll");
  parker_uart_host_tx_seq    tx_poll = parker_uart_host_tx_seq::type_id::create("tx_poll");
//  uart_wait_empty_seq wait_empty = uart_wait_empty_seq::type_id::create("wait_empty");






$display("rrrrrrrrrrrrrrrrr");
    tx_poll.start(apb);

 
endtask: body

endclass: parker_try_vseq
