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

class parker_uart_host_tx_seq extends host_if_base_seq;

`uvm_object_utils(parker_uart_host_tx_seq)

rand int no_tx_chars;

constraint char_limit_c { no_tx_chars inside {[1:20]};}

function new(string name = "parker_uart_host_tx_seq");
  super.new(name);
endfunction

task body;
  int i;

  super.body();
  i = 0;
 $display("ppppppp no_tx_chars  = %0h ",no_tx_chars);

no_tx_chars = 2;

rm.DIV1.write(status, 8'h01, .parent(this));
rm.DIV2.write(status, 8'h00, .parent(this));
rm.FCR.write(status, 8'h03 ,.parent(this));
rm.LCR.write(status, 8'h24, .parent(this));
 rm.TXD.write(status, 8'h22, .parent(this));
 rm.TXD.write(status, 8'h30, .parent(this));
// rm.TXD.write(status, $urandom(), .parent(this));


#5000;
endtask: body

endclass: parker_uart_host_tx_seq
