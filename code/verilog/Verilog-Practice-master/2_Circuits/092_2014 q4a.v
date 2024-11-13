module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    
    reg tmp;
    //not use <=
    always @(posedge clk) begin
        tmp = E ? w : Q;
        Q = L ? R : tmp;
    end

endmodule
/*always@(posedge clk) begin
        if(E) begin
            if(L)
                Q <= R;
            else
                Q <= w;
        end
        else begin
            if(L)
                Q <= R;
            else
                Q <= Q;
        end
    end
*/