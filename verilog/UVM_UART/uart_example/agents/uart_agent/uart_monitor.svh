//------------------------------------------------------------
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
//------------------------------------------------------------

class uart_monitor extends uvm_component;

`uvm_component_utils(uart_monitor)

uvm_analysis_port #(uart_seq_item) ap;

virtual serial_if sline;

uart_agent_config cfg;

logic[15:0] divisor;

uart_seq_item s_char;

bit sbe;
bit pe;
bit fe;
logic clk;
logic parity;

logic[7:0] rxData;

function new(string name = "uart_monitor", uvm_component parent = null);
  super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
  ap = new("uart_ap", this);
  if (!uvm_config_db #(uart_agent_config)::get(this, "", "uart_agent_config", cfg) )
     `uvm_fatal("CONFIG_LOAD", "Cannot get() configuration uart_agent_config from uvm_config_db. Have you set() it?")
  divisor = cfg.baud_divisor;
  s_char = new("Serial_character");
endfunction: build_phase

task run_phase(uvm_phase phase);
  begin
    repeat(3)
    @(posedge sline.clk);

    forever
      begin
        fork
          rxChar;
          startBitErrorDetect;
        join_any
        if (sbe == 1)
            disable fork;
        if (sbe == 0)
          begin
            s_char.data = rxData;
            s_char.pe = pe;
            s_char.fe = fe;
            ap.write(s_char);
            rxData = 0;
          end
       end
  end
endtask : run_phase

task startBitErrorDetect;
 automatic integer i;
 automatic int startbit = 0;
   begin
     sbe = 0;
     s_char.sbe = 0;
     i = 0;
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp1"),UVM_LOW)

     while((sline.sdata == 1'b1) || (sline.sdata == 1'bx))
       @(posedge  sline.clk);

       startbit = 1;
     begin : startBitErrorDetect
       startbit = 99;
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp2"),UVM_LOW)

       while ((sbe != 1) && i<8)
         begin
           @(posedge sline.clk);
           if(sline.sdata == 1'b1)
             begin
               `uvm_warning("startBitErrorDetect", "False start bit detected")
               startbit = 88;
               sbe = 1;
               s_char.sbe = 1;
             end
             i++;
             startbit = i;
         end
       if (!sbe)
         forever
           @(posedge sline.clk);
      end : startBitErrorDetect
   end
endtask

task rxChar;
  automatic int startbit= 0;
// Receives a character according to the appropriate word format
  begin
    // Wait for a falling edge on txd
    fe = 0;
    rxData = 0;
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp4"),UVM_LOW)

     while((sline.sdata == 1'b1) || (sline.sdata == 1'bx))
       @(posedge sline.clk);
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp3"),UVM_LOW)


     startbit = 1;
     begin : rxCharDetect

      repeat(23) // Sample on mid point of data field

        @(posedge sline.clk);
      startbit = 0;
      rxData[0] = sline.sdata;
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp0"),UVM_LOW)

      bitPeriod;
      rxData[1] = sline.sdata;
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp1"),UVM_LOW)

      bitPeriod;
      rxData[2] = sline.sdata;
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp2"),UVM_LOW)

      bitPeriod;
      rxData[3] = sline.sdata;
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp3"),UVM_LOW)

      bitPeriod;
      rxData[4] = sline.sdata;
//`uvm_info("Parker Monitor",$sformatf("ppppppppppppppppp4"),UVM_LOW)

      if (cfg.lcr[1:0] > 2'b00)
        begin
          bitPeriod;
          rxData[5] = sline.sdata;
        end
      else if (cfg.lcr[3])
        begin
          bitPeriod;
          parity = sline.sdata; // 5 bits with parity
        end
      if (cfg.lcr[1:0] > 2'b00)
        begin
          if (cfg.lcr[1:0] > 2'b01)
            begin
              bitPeriod;
              rxData[6] = sline.sdata;
            end
          else if (cfg.lcr[3])
            begin
              bitPeriod;
              parity = sline.sdata;
            end
        end
      if (cfg.lcr[1:0] > 2'b01)
        begin
          if (cfg.lcr[1:0] > 2'b10)
            begin
              bitPeriod;
              rxData[7] = sline.sdata;
            end
          else if (cfg.lcr[3])
            begin
              bitPeriod;
              parity = sline.sdata;
            end
        end
      if (cfg.lcr[3] && (cfg.lcr[1:0] > 2'b10) )
        begin
          bitPeriod;
          parity = sline.sdata;
        end
      if (cfg.lcr[3])
        begin
          pe = logic'(calParity (cfg.lcr, rxData));
          if (pe != parity)
            pe = 1;
          else
            pe = 0;
        end

//$display("parker check rxData = %0h",rxData);
      // Check for framing error - get to bit boundary
      repeat(8)
        @(posedge sline.clk);
      repeat(8)
        begin
          @(posedge sline.clk);
          if (sline.sdata == 1'b0)
            fe = 1;
        end
    end : rxCharDetect
  end
endtask

task bitPeriod;
  begin
    repeat(16)
      @(posedge sline.clk);
  end
endtask

endclass: uart_monitor
