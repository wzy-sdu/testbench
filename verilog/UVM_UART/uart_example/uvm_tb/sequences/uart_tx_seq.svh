class uart_tx_seq extends uvm_sequence #(uart_seq_item);

`uvm_object_utils(uart_tx_seq)

rand int no_tx_chars;

rand bit[7:0] lcr;
rand bit[15:0] baud_divisor;
rand bit no_errors;

function new(string name = "uart_tx_seq");
  super.new(name);
endfunction

task body;
  uart_seq_item tx_char = uart_seq_item::type_id::create("tx_char");

  repeat(no_tx_chars) begin
    start_item(tx_char);//后两项默认?
    assert(tx_char.randomize() with {data[4:0] != 0;});
    tx_char.baud_divisor = baud_divisor;
    tx_char.lcr = lcr;
    if(no_errors) begin
      tx_char.fe = 0;
      tx_char.pe = 0;
      tx_char.sbe = 0;
    end
    finish_item(tx_char);
  end

endtask: body

endclass: uart_tx_seq