module  sequential_detector_shift_register(
    input clk,
    input rst,
    input x,
    output z
);//10010
    reg [4:0] state;
    reg tmp;
    assign z = tmp;
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            state = 0;
            	
        end
        else begin
            state = {state[3:0], x};
            
            if(state == 5'b10010)//左移自动位扩展，右移不会,因此不能直接<<
            tmp = 1;
            else
            tmp = 0;
        end
    end
    //晚了1个周期,要等state更新

    
                


    
endmodule
