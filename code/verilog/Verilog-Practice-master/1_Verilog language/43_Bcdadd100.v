module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [399:0] cout_tmp;
    bcd_fadd fadd(.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(cout_tmp[0]),.sum(sum[3:0]));
    assign cout = cout_tmp[396];
    
    generate
        genvar i;
        for(i = 4; i < 400; i=i+4) begin : adder
            bcd_fadd fadd(.a(a[i+3:i]), .b(b[i+3:i]), .cin(cout_tmp[i-4]), .cout(cout_tmp[i]),.sum(sum[i+3:i]));
        end
    endgenerate

endmodule
/*wire [99:0] cout_tmp ;
    bcd_fadd test(a[3:0], b[3:0], cin, cout_tmp[0], sum[3:0]);
    genvar i;
    generate
        for(i = 4; i < 397; i = i + 4) begin:m
            bcd_fadd test(a[i+3:i], b[i+3:i], cout_tmp[i/4-1], cout_tmp[i/4], sum[i+3:i]); 
            end
    endgenerate
    assign cout = cout_tmp[99];
*/