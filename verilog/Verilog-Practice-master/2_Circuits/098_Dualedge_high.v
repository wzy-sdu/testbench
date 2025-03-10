module top_module (
    input clk,
    input d,
    output q
);
    
    reg [1:0] status;
    
    always @(posedge clk) begin
        status[0] = d;
    end
    
    always @(negedge clk) begin
        status[1] = d;
    end
    
    assign q = clk ? status[0] : status[1];
    
endmodule
/*reg q_d1;
    reg q_d2;
    
    always@(posedge clk)begin
        q_d1 <= d ^ q_d2;
    end
    always@(negedge clk)begin
        q_d2 <= d ^ q_d1;
    end
    
    assign q = q_d1 ^ q_d2;
*/