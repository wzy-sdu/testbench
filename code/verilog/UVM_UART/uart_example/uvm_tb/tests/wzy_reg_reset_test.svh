class wzy_reg_reset_test extends uart_test_base;

`uvm_component_utils(wzy_reg_reset_test)

extern function new(string name = "wzy_reg_reset_test", uvm_component parent = null);
extern task run_phase(uvm_phase phase);
extern function void report_phase(uvm_phase phase);

endclass: wzy_reg_reset_test

function wzy_reg_reset_test::new(string name = "wzy_reg_reset_test", uvm_component parent = null);
  super.new(name, parent);
endfunction

task wzy_reg_reset_test::run_phase(uvm_phase phase);
  wzy_reg_reset_vseq vseq = wzy_reg_reset_vseq::type_id::create("vseq");

  phase.raise_objection(this);
  init_vseq(vseq);
  vseq.start(null);
  phase.drop_objection(this);
endtask: run_phase

function void wzy_reg_reset_test::report_phase(uvm_phase phase);
  if((m_env.tx_sb.no_errors == 0) && (m_env.tx_sb.no_data_errors == 0) && (m_env.rx_sb.no_reported_errors == 0) && (m_env.rx_sb.no_data_errors == 0)) begin
    `uvm_info("*** UVM TEST PASSED ***", "No RX or TX data errors detected", UVM_LOW)
  end
  else begin
    `uvm_error("*** UVM TEST FAILED ***", "RX or TX data errors detected - see scoreboard reports for more detail")
  end
endfunction: report_phase