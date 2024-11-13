module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //
    wire [3:0] Q_tmp;
    assign c_enable = enable;
    assign c_d = c_load ? 1 : 0;
    always @(posedge clk) begin
        if(reset) begin
            Q <= 1;
            Q_tmp <= 1;
        end
        else begin
            if(enable) begin
                if(Q == 12) begin
                    Q <= 1;
                    Q_tmp <= 1;
                end
                else begin
                    Q <= Q + 1;
                    Q_tmp <= Q_tmp + 1;
                end
            end
        end
    end
    
    always @(*) begin
        if(reset || (Q == 12 && c_enable)) begin
            c_load <= 1;
        end
        else begin
            c_load <= 0;
        end
    end

    count4 the_counter (clk, c_enable, c_load, c_d, Q_tmp);

endmodule
/*always@(*)
        begin
            if(reset == 1'b1)
                begin
            		c_load <= 1'b1;
                    c_d	<= 4'd1;
                end
            else
                begin
                    c_load <= 1'b0;
					c_d <= 4'd0;
                    if((enable == 1'b1) && (Q == 4'd12))
       			 		begin
                     		c_load <= 1'b1;
                     		c_d <= 4'd1;
                		 end
                end
        end
    assign	c_enable = enable;
    	
    count4	count4_inst(
        .clk	(clk)	,
        .enable	(enable)	,
        .load	(c_load)	,
        .d		(c_d)	,
        .Q		(Q)
    );
*/
/*wire load;
    assign c_load = load;
    assign c_enable = enable;
    assign c_d = 1;
    always@(*)begin
        if(Q==12&enable)begin
           load = 1; 
        end
        else begin
           load = reset; 
        end
    end
    count4 the_counter (clk, c_enable, load, c_d ,Q/*, ... */ );

*/
/*assign c_enable = enable;
    assign c_load = reset||Q == 12&&enable == 1;
    assign c_d = c_load?1:0;
    count4 the_counter (clk, c_enable, c_load, c_d, Q/*, ... */ );
*/