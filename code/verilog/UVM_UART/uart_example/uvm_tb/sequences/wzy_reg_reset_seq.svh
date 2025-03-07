class wzy_reg_reset_seq extends host_if_base_seq;

`uvm_object_utils(wzy_reg_reset_seq)

rand int no_tx_chars;

constraint char_limit_c { no_tx_chars inside {[1:20]};}

function new(string name = "wzy_reg_reset_seq");
  super.new(name);
endfunction

task body;

  super.body();
  
 $display("ppppppp no_tx_chars  = %0h ",no_tx_chars);

no_tx_chars = 2;

rm.DIV1.write(status, data, .parent(this));
$display("DIV1 = ", data);
rm.DIV2.write(status, data, .parent(this));
$display("DIV2 = ", data);
rm.FCR.write(status, data, .parent(this));
$display("FCR = ", data);
rm.LCR.write(status, data, .parent(this));
$display("LCR = ", data);
 rm.TXD.write(status, data, .parent(this));
 $display("TXD = ", data);
 
// rm.TXD.write(status, $urandom(), .parent(this));

endtask: body

endclass