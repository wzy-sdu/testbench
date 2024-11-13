module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
    reg [2:0] Q;
    
    always @(posedge clk) begin
        Q[0] <= (resetn) ? in : 0;
        Q[1] <= (resetn) ? Q[0] : 0;
        Q[2] <= (resetn) ? Q[1] : 0;
        out <= (resetn) ? Q[2] : 0;
    end

endmodule
/*module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
    reg [3:0] tmp;
    test test1(clk, resetn, in, tmp[0]);
    test test2(clk, resetn, tmp[0], tmp[1]);
    test test3(clk, resetn, tmp[1], tmp[2]);
    test test4(clk, resetn, tmp[2], tmp[3]);
    
    assign out = tmp[3];

endmodule

module test (
    input clk,
    input resetn,
    input in,
    output out);
    
    always @(posedge clk) begin
        if(!resetn)
            out <= 0;
        else
            out <= in;
    end
endmodule
*/