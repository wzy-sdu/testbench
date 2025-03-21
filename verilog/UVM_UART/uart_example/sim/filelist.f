+incdir+$UVM_HOME/src
+incdir+../agents/apb_agent
+incdir+../agents/uart_agent 
+incdir+../agents/modem_agent 
+incdir+../uvm_tb/env 
+incdir+../uvm_tb/sequences 
+incdir+../uvm_tb/virtual_sequences 
+incdir+../uvm_tb/tests 
$UVM_HOME/src/uvm_pkg.sv

../rtl/uart/uart_16550.sv  
../rtl/uart/uart_register_file.sv  
../rtl/uart/uart_rx_fifo.sv  
../rtl/uart/uart_rx.sv  
../rtl/uart/uart_tx_fifo.sv  
../rtl/uart/uart_tx.sv

../agents/apb_agent/apb_if.sv
../agents/apb_agent/apb_agent_pkg.sv
../agents/uart_agent/serial_if.sv
../agents/uart_agent/uart_agent_pkg.sv
../agents/modem_agent/modem_if.sv
../agents/modem_agent/modem_agent_pkg.sv
../uvm_tb/register_model/uart_reg_pkg.sv
../uvm_tb/env/uart_env_pkg.sv
../uvm_tb/sequences/host_if_seq_pkg.sv
../uvm_tb/sequences/uart_seq_pkg.sv
../uvm_tb/virtual_sequences/uart_vseq_pkg.sv
../uvm_tb/tests/uart_test_pkg.sv

../uvm_tb/tb/interrupt_if.sv
../protocol_monitor/apb_monitor.sv
../uvm_tb/tb/uart_tb.sv


