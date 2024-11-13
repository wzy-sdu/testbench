module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //
    
    MUXDFF ins0(SW[3], KEY[0], KEY[1], KEY[2], KEY[3], LEDR[3]);
    MUXDFF ins1(SW[2], KEY[0], KEY[1], KEY[2], LEDR[3], LEDR[2]);
    MUXDFF ins2(SW[1], KEY[0], KEY[1], KEY[2], LEDR[2], LEDR[1]);
    MUXDFF ins3(SW[0], KEY[0], KEY[1], KEY[2], LEDR[1], LEDR[0]);

endmodule

module MUXDFF (
    input R,
    input clk,
    input E,
    input L,
    input w,
    output out
);
    wire [1:0] mid;
    assign mid[0] = E ? w : out;
    assign mid[1] = L ? R : mid[0];
    
    always @(posedge clk) begin
        out <= mid[1];
    end

endmodule
/*module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //
    reg [3:0] tmp;
    
    test test1(KEY[0], KEY[2], SW[3], KEY[1]?KEY[3]:tmp[3], tmp[3]);
    test test2(KEY[0], KEY[2], SW[2], KEY[1]?tmp[3]:tmp[2], tmp[2]);
    test test3(KEY[0], KEY[2], SW[1], KEY[1]?tmp[2]:tmp[1], tmp[1]);
    test test4(KEY[0], KEY[2], SW[0], KEY[1]?tmp[1]:tmp[0], tmp[0]);
    assign LEDR = tmp;

endmodule

module test(
    input clk,
    input l,
    input r1,
    input r0,
    output q);
    
    always @(posedge clk) begin
        if(l)
            q <= r1;
        else
            q <= r0;
    end
endmodule
*/