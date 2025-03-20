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

class uart_host_tx_seq extends host_if_base_seq;

`uvm_object_utils(uart_host_tx_seq)

rand int no_tx_chars;

constraint char_limit_c { no_tx_chars inside {[1:20]};}

function new(string name = "uart_host_tx_seq");
  super.new(name);
endfunction

task body;
  int i;
  int z;

  super.body();
  rm.MCR.write(status, 32'h10, .parent(this));//loopback mode
  i = 0;
  $display("tx_no_tx_chars = %h", no_tx_chars);//2
  while(i < no_tx_chars) begin
    rm.LSR.read(status, data, .parent(this));
    $display("2_read_LSR = %h", data);

    // Wait for Tx FIFO to empty
    while(!data[5]) begin//TX FIFO has at least one character in it
      rm.LSR.read(status, data, .parent(this));
      $display("2_read_LSR_data[5] = %h", data);
    end

    for(int j = 0; j < 16; j++) begin
      // Fill the FIFO or run out of chars:
      //z = $urandom;
      rm.TXD.write(status, 32'h55, .parent(this));//TXD, RXD读写走serial_if给rx_data_out[], 由uart_driver, uart_monitor给赋值?
      //rm.RXD.read(status, data, .parent(this));
      $display("2_write_TXD = %h", 8'h55);
      //$display("2_read_RXD = %h", data);
      i++;

      if(i >= no_tx_chars) begin
        $display("2_break!!!!!");
        break;
      end
      j++;
    end
  end
endtask: body

endclass: uart_host_tx_seq
