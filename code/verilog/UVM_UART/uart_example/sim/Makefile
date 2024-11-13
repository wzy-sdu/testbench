.PHONY: clean comp run
merge_path     ?= ./merge_cov
RTL          ?= ../../../rtl
AGENTS       ?= ../../../agents
UTILS        ?= ../../../utils
TAR_PATH     ?= ../../../../
TEST         ?= pss_spi_interrupt_test

all: clean comp run

clean:
	rm -rf ./csrc *.daidir ./csrc *.log *.vbd *.simv *.fsdb *.key

comp:
	vcs -sverilog $(UVM_HOME)/src/dpi/uvm_dpi.cc -CFLAGS "-DVCS" +acc +vpi -fsdb -cm line+tgl+cond+fsm+assert+branch -cm_tgl mda -timescale=1ns/10ps -f filelist.f

run: sim_word_format_poll sim_modem_poll sim_word_format_int sim_modem_int sim_baud_rate sim_uart_regs
#run: sim_word_format_poll sim_modem_poll sim_word_format_int

sim_word_format_poll:
	./simv +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=word_format_poll_test -cm line+tgl+cond+fsm+assert+branch -l word_format_poll.log;
	cp -pr simv.vdb ./merge_cov/word_format_poll.vdb

sim_modem_poll:
	./simv +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=modem_poll_test -cm line+tgl+cond+fsm+assert+branch -l modem_poll_test.log;
	cp -pr simv.vdb ./merge_cov/modem_poll_test.vdb

sim_word_format_int:
	./simv +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=word_format_int_test -cm line+tgl+cond+fsm+assert+branch -l word_format_int_test.log;
	cp -pr simv.vdb ./merge_cov/word_format_int_test.vdb
sim_modem_int:
	./simv +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=modem_int_test -cm line+tgl+cond+fsm+assert+branch -l modem_int_test.log;
	cp -pr simv.vdb ./merge_cov/modem_int_test.vdb

sim_baud_rate:
	./simv +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=baud_rate_test -cm line+tgl+cond+fsm+assert+branch -l baud_rate_test.log;
	cp -pr simv.vdb ./merge_cov/baud_rate_test.vdb

sim_rx_errors_int:
	./simv +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=rx_errors_int_test -cm line+tgl+cond+fsm+assert+branch -l rx_errors_int_test.log;
	cp -pr simv.vdb ./merge_cov/rx_errors_int_test.vdb


sim_uart_regs:
	./simv +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=uart_test -cm line+tgl+cond+fsm+assert+branch -l uart_test.log;
	cp -pr simv.vdb ./merge_cov/uart_test.vdb


parker_try:
	./simv +UVM_VERBOSITY=UVM_LOW +UVM_TESTNAME=parker_try_test -cm line+tgl+cond+fsm+assert+branch -l parker_try_test.log

verdi:
	verdi -sv -f filelist.f -ssf uart.fsdb &
cov:
	dve -covdir merge_simv.vdb &
merge2:
	urg -dir ${merge_path}/word_format_poll.vdb \
	${merge_path}/modem_poll_test.vdb \
	${merge_path}/word_format_int_test.vdb \
	${merge_path}/modem_int_test.vdb \
	${merge_path}/baud_rate_test.vdb \
	${merge_path}/rx_errors_int_test.vdb \
	${merge_path}/uart_test.vdb \
	-map uart_16550 -format text -log cov.log -dbname merge_simv.vdb -report merged_coverage







