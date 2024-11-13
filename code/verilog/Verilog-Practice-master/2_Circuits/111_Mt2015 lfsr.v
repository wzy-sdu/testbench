module top_module (
    input [2:0] SW,      // R
    input [1:0] KEY,     // L and clk
    output [2:0] LEDR);  // Q
    
    wire clk, L;
    wire [2:0] R;
    reg [2:0] Q;
    assign clk = KEY[0];
    assign L = KEY[1];
    assign R = SW;

    always @(posedge clk) begin
        Q <= {(L) ? R[2] : (Q[1] ^ Q[2]), (L) ? R[1] : Q[0], (L) ? R[0] : Q[2]};
    end
    
    assign LEDR = Q;

endmodule
/*module top_module (
	input [2:0] SW,      // R
	input [1:0] KEY,     // L and clk
	output [2:0] LEDR);  // Q
    
    reg [2:0] tmp;
    
    test test1(KEY[0], KEY[1], SW[0], tmp[2], tmp[0]);
    test test2(KEY[0], KEY[1], SW[1], tmp[0], tmp[1]);
    test test3(KEY[0], KEY[1], SW[2], tmp[1]^tmp[2], tmp[2]);
    assign LEDR = tmp;


endmodule

module test(
    input clk,
    input l,
    input r0,
    input r1,
    output q);
    
    always @(posedge clk) begin
        if(l)
            q <= r0;
        else
            q <= r1;
    end
endmodule
*/