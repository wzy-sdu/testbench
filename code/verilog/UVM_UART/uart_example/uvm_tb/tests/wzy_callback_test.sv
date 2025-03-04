class word_format_int_test extends uart_test_base;

`uvm_component_utils(word_format_int_test)

extern function new(string name = "word_format_int_test", uvm_component parent = null);
extern task run_phase(uvm_phase phase);
extern function void report_phase(uvm_phase phase);

endclass: word_format_int_test

function word_format_int_test::new(string name = "word_format_int_test", uvm_component parent = null);
  super.new(name, parent);
endfunction

task word_format_int_test::run_phase(uvm_phase phase);
  word_format_int_vseq vseq = word_format_int_vseq::type_id::create("vseq");

  phase.raise_objection(this);
  init_vseq(vseq);
  vseq.start(null);
  phase.drop_objection(this);
endtask: run_phase

function void word_format_int_test::report_phase(uvm_phase phase);
  if((m_env.tx_sb.no_errors == 0) && (m_env.tx_sb.no_data_errors == 0) && (m_env.rx_sb.no_reported_errors == 0) && (m_env.rx_sb.no_data_errors == 0)) begin
    `uvm_info("*** UVM TEST PASSED ***", "No RX or TX data errors detected", UVM_LOW)
  end
  else begin
    `uvm_error("*** UVM TEST FAILED ***", "RX or TX data errors detected - see scoreboard reports for more detail")
  end
endfunction: report_phase