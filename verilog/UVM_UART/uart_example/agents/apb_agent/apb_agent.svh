//------------------------------------------------------------
//   Copyright 2010-2012 Mentor Graphics Corporation
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
//
// Class Description:
//
//
class apb_agent extends uvm_component;

// UVM Factory Registration Macro
//
`uvm_component_utils(apb_agent)

//------------------------------------------
// Data Members
//------------------------------------------
apb_agent_config m_cfg;//uart_env_config里也有?
//------------------------------------------
// Component Members
//------------------------------------------
uvm_analysis_port #(apb_seq_item) ap;
apb_monitor   m_monitor;
apb_sequencer m_sequencer;
apb_driver    m_driver;
apb_coverage_monitor m_fcov_monitor;
//------------------------------------------
// Methods
//------------------------------------------

// Standard UVM Methods:
extern function new(string name = "apb_agent", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern function void connect_phase(uvm_phase phase);

endclass: apb_agent


function apb_agent::new(string name = "apb_agent", uvm_component parent = null);
  super.new(name, parent);
endfunction

function void apb_agent::build_phase(uvm_phase phase);

  if(!uvm_config_db #(apb_agent_config)::get(this, "", "apb_agent_config", m_cfg)) begin//get配置，主要是APB接口
    `uvm_error("build_phase", "APB agent config not found")
  end

  // Monitor is always present
  m_monitor = apb_monitor::type_id::create("m_monitor", this);

  // Only build the driver and sequencer if active
  if(m_cfg.active == UVM_ACTIVE) begin
    m_driver = apb_driver::type_id::create("m_driver", this);
    m_sequencer = apb_sequencer::type_id::create("m_sequencer", this);
  end
  if(m_cfg.has_functional_coverage) begin
    m_fcov_monitor = apb_coverage_monitor::type_id::create("m_fcov_monitor", this);
  end

//实例化uvm_analysis_port
  ap = new("ap", this);

endfunction: build_phase

function void apb_agent::connect_phase(uvm_phase phase);
//agent, driver, monitor, apb_agent_config 都有APB接口
  m_monitor.APB = m_cfg.APB;//apb_monitor连接APB
  m_monitor.apb_index = m_cfg.apb_index;
  m_monitor.ap.connect(ap);//apb_seq_item接口相连

  // Only connect the driver and the sequencer if active
  if(m_cfg.active == UVM_ACTIVE) begin
    m_driver.seq_item_port.connect(m_sequencer.seq_item_export);//uvm_driver.seq_item_port连接uvm_sequencer.seq_item_export
    m_driver.APB = m_cfg.APB;//driver连接APB
  end
  if(m_cfg.has_functional_coverage) begin
    m_monitor.ap.connect(m_fcov_monitor.analysis_export);//apb_monitor连接apb_coverage_monitor
  end

endfunction: connect_phase
/*
active = 1, has_coverage = 1:
apb_monitor -> (config)APB
            -> (apb_seq_item) uvm_analysis_port
            -> apb_coverage_monitor
apb_driver  -> (config)APB
            -> apb_sequencer
apb_sequencer
apb_coverage_monitor
*/
