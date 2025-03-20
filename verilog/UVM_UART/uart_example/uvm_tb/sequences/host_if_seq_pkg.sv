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

package host_if_seq_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"

import apb_agent_pkg::*;
import uart_reg_pkg::*;
import uart_env_pkg::*;

class host_if_base_seq extends uvm_sequence #(apb_seq_item);//相当于apb_reg_sequence?
`uvm_object_utils(host_if_base_seq)

// To get the register model
uart_env_config cfg;
uart_reg_block rm;

// Register model variables:
uvm_status_e status;
rand uvm_reg_data_t data;//默认数据类型

function new(string name = "host_if_base_seq");
  super.new(name);
endfunction

task body;
  if(!uvm_config_db #(uart_env_config)::get(m_sequencer, "", "uart_env_config", cfg)) begin
    `uvm_error("body", "Unable to find uart_env_config in uvm_config_db")
  end
  rm = cfg.rm;
endtask: body

endclass: host_if_base_seq


////////////////////////////////////////////////////////////////////////////////
class quick_reg_access_seq extends host_if_base_seq;

`uvm_object_utils(quick_reg_access_seq)

function new(string name = "quick_reg_access_seq");
  super.new(name);
endfunction

task body;
  super.body();
  // read from all the registers
  rm.RXD.read(status, data, .parent(this));
  $display("RXD = %0h", data);
  rm.IER.read(status, data, .parent(this));
  $display("IER = %0h", data);
  rm.IID.read(status, data, .parent(this));
  $display("IIR = %0h", data);
  rm.LCR.read(status, data, .parent(this));
  $display("LCR = %0h", data);
  rm.MCR.read(status, data, .parent(this));
  $display("MCR = %0h", data);
  rm.LSR.read(status, data, .parent(this));
  $display("LSR = %0h", data);
  rm.MSR.read(status, data, .parent(this));
  $display("MSR = %0h", data);
  rm.DIV1.read(status, data, .parent(this));
  $display("DIV1 = %0h", data);
  rm.DIV2.read(status, data, .parent(this));
  $display("DIV2 = %0h", data);

  // write to all the registers
  data = 32'haa;//0000 0000 0000 0000 0000 0000 1010 1010//
  rm.TXD.write(status, data, .parent(this));
  //$display("TXD = %0h", data);
  rm.IER.write(status, data, .parent(this));
  //$display("IER = %0h", data);
  rm.FCR.write(status, data, .parent(this));
  //$display("FCR = %0h", data);
  rm.LCR.write(status, data, .parent(this));
  //$display("LCR = %0h", data);
  rm.MCR.write(status, data, .parent(this));
  //$display("MCR = %0h", data);
  rm.LSR.write(status, data, .parent(this));
 // $display("LSR = %0h", data);
  rm.MSR.write(status, data, .parent(this));
  //$display("MSR = %0h", data);
  rm.DIV1.write(status, data, .parent(this));
  //$display("DIV1 = %0h", data);
  rm.DIV2.write(status, data, .parent(this));
  //$display("DIV2 = %0h", data);

$display(" ");
  // read back again
  rm.RXD.read(status, data, .parent(this));
  $display("RXD = %0h", data);
  rm.IER.read(status, data, .parent(this));
  $display("IER = %0h", data);
  rm.IID.read(status, data, .parent(this));
  $display("IIR = %0h", data);
  rm.LCR.read(status, data, .parent(this));
  $display("LCR = %0h", data);
  rm.MCR.read(status, data, .parent(this));
  $display("MCR = %0h", data);
  rm.LSR.read(status, data, .parent(this));
  $display("LSR = %0h", data);
  rm.MSR.read(status, data, .parent(this));
  $display("MSR = %0h", data);
  rm.DIV1.read(status, data, .parent(this));
  $display("DIV1 = %0h", data);
  rm.DIV2.read(status, data, .parent(this));
  $display("DIV2 = %0h", data);


endtask

endclass: quick_reg_access_seq

`include "uart_config_seq.svh"
`include "parker_uart_host_tx_seq.svh"
`include "uart_host_tx_seq.svh"
`include "uart_host_rx_seq.svh"
`include "uart_host_msr_seq.svh"
`include "uart_host_mcr_seq.svh"
`include "uart_int_enable_seq.svh"
`include "uart_int_tx_rx_seq.svh"
`include "uart_wait_empty_seq.svh"
`include "modem_isr_seq.svh"
`include "baud_rate_test_seq.svh"
`include "wzy_reg_reset_seq.svh"

endpackage: host_if_seq_pkg
