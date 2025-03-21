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

class basic_reg_vseq extends uart_vseq_base;
//读写全部寄存器
`uvm_object_utils(basic_reg_vseq)

function new(string name = "basic_reg_vseq");
  super.new(name);
endfunction

task body;

  quick_reg_access_seq t_seq = quick_reg_access_seq::type_id::create("t_seq");

  t_seq.start(apb);

endtask: body

endclass: basic_reg_vseq