class wzy_reg_reset_vseq extends uart_vseq_base;

`uvm_object_utils(wzy_reg_reset_vseq)

function new(string name = "wzy_reg_reset_vseq");
    super.new(name);
endfunction

task body;
    $display("apb uart reg reset test start!!!");

    bit[31:0] paddr;
    bit[31:0] prdata;
    bit[31:0] pwdata;

    bit pclk;
    bit presetn;

    //apb_agent_config apb_config = apb_agent_config::type_id::create("apb_config");

    APB.PRESETn <= 1;
    #10;
    APB.PRESETn <= 0;

    // wzy_reg_reset_seq test = wzy_reg_reset_seq::type_id::create("test");
    // $display("okokokokokokokok");
    // test.start(apb);

    quick_reg_access_seq t_seq = quick_reg_access_seq::type_id::create("t_seq");

    t_seq.start(apb);
    

    

    // int i;
    // for(i = 0; i <= 32; i = i + 4) begin
        
    // end

    //APB.PADDR = paddr;
    //prdata = APB.PRDATA;

    //apb_config.start(apb);

endtask: body

endclass
