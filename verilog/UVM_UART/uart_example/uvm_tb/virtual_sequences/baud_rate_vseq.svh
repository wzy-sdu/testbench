class uart_baudrate_vseq extends uvm_sequence #(uvm_sequence_item);

    // 注册到UVM工厂
    `uvm_object_utils(uart_baudrate_vseq)

    // 需要控制的sequencer和agent
    uart_sequencer uart_sqr;
    uart_agent_config uart_cfg;

    // 波特率列表
    int baudrate_list[] = {9600, 19200, 38400, 57600, 115200};

    // 构造函数
    function new(string name = "uart_baudrate_vseq");
        super.new(name);
    endfunction

    // 虚拟序列的主体任务
    virtual task body();
        // 检查sequencer和配置是否设置
        if (uart_sqr == null)
            `uvm_fatal("UART_VSEQ", "UART sequencer is null")
        if (uart_cfg == null)
            `uvm_fatal("UART_VSEQ", "UART agent config is null")

        // 遍历波特率列表
        foreach (baudrate_list[i]) begin
            // 设置新的波特率
            uart_cfg.baudrate = baudrate_list[i];
            `uvm_info("UART_VSEQ", $sformatf("Testing baudrate: %0d", baudrate_list[i]), UVM_LOW)

            // 启动UART配置序列
            uart_config_seq config_seq = uart_config_seq::type_id::create("config_seq");
            config_seq.start(uart_sqr);

            // 启动UART数据传输序列
            uart_tx_rx_seq tx_rx_seq = uart_tx_rx_seq::type_id::create("tx_rx_seq");
            tx_rx_seq.start(uart_sqr);

            // 等待一段时间以确保数据传输完成
            #1000;
        end
    endtask

endclass

class uart_config_seq extends uvm_sequence #(uart_transaction);

    // 注册到UVM工厂
    `uvm_object_utils(uart_config_seq)

    // 需要配置的波特率
    int baudrate;

    // 构造函数
    function new(string name = "uart_config_seq");
        super.new(name);
    endfunction

    // 序列的主体任务
    virtual task body();
        uart_transaction tx;
        tx = uart_transaction::type_id::create("tx");
        start_item(tx);
        assert(tx.randomize() with {tx.baudrate == baudrate;});
        finish_item(tx);
    endtask

endclass

class uart_tx_rx_seq extends uvm_sequence #(uart_transaction);

    // 注册到UVM工厂
    `uvm_object_utils(uart_tx_rx_seq)

    // 构造函数
    function new(string name = "uart_tx_rx_seq");
        super.new(name);
    endfunction

    // 序列的主体任务
    virtual task body();
        uart_transaction tx, rx;
        tx = uart_transaction::type_id::create("tx");
        rx = uart_transaction::type_id::create("rx");

        // 发送数据
        start_item(tx);
        assert(tx.randomize());
        finish_item(tx);

        // 接收数据
        start_item(rx);
        finish_item(rx);

        // 验证接收到的数据是否正确
        if (tx.data != rx.data)
            `uvm_error("UART_TX_RX_SEQ", "Data mismatch")
        else
            `uvm_info("UART_TX_RX_SEQ", "Data match", UVM_LOW)
    endtask

endclass

class uart_test extends uvm_test;

    // 注册到UVM工厂
    `uvm_component_utils(uart_test)

    // 环境实例
    uart_env env;

    // 构造函数
    function new(string name = "uart_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    // 构建阶段
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        env = uart_env::type_id::create("env", this);
    endfunction

    // 运行阶段
    virtual task run_phase(uvm_phase phase);
        uart_baudrate_vseq vseq;
        phase.raise_objection(this);
        vseq = uart_baudrate_vseq::type_id::create("vseq");
        vseq.uart_sqr = env.agent.sequencer;
        vseq.uart_cfg = env.agent.cfg;
        vseq.start(null);
        phase.drop_objection(this);
    endtask

endclass