module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire cout1, cout2;
    wire [15:0] sum1, sum2;
    wire [31:0] b_xor;
    
    always @(*) begin
        if(sub)
            b_xor = ~b;
        else
            b_xor = b;
    end
    
    add16 instance1(.a(a[15:0]), .b(b_xor[15:0]), .cin(sub), .cout(cout1), .sum(sum1));
    add16 instance2(.a(a[31:16]), .b(b_xor[31:16]), .cin(cout1), .cout(cout2), .sum(sum2));
    
    assign sum = {sum2, sum1};
    
endmodule
/*
2：
wire cout1, cout2;
    wire [15:0] sum1, sum2;
    //module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    
    add16 lo( a[15:0], b[15:0]^{16{sub}}, sub, sum1, cout1 );
    add16 hi( a[31:16], b[31:16]^{16{sub}}, cout1, sum2, cout2 );
 
    assign sum = {sum2, sum1};
//{16{sub}}，不扩充16位，只有1位，会只异或b[0]这一位，等同与0000000000000001
异或，而不是1111111111111111
*/