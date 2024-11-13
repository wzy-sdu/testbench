module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    
    wire [99:0] cout_tmp;
    assign sum[0] = a[0] ^ b[0] ^ cin;
    assign cout_tmp[0] = a[0] & b[0] | a[0] & cin | b[0] & cin;
    integer i;
    always @(*) begin
        for(i = 1; i < 100; i = i + 1) begin
            sum[i] = a[i] ^ b[i] ^ cout_tmp[i-1];
            cout_tmp[i] = a[i] & b[i] | a[i] & cout_tmp[i-1] | b[i] & cout_tmp[i-1];
        end
        cout = cout_tmp[99];
    end

endmodule
/*task add;
        input a;
        input b;
        input cin;
        output cout; 
        output sum;
        sum = a^b^cin;
        cout = a&b|a&cin|b&cin;
    endtask
    
    wire [99:0] cout2;
    always@(*) begin
        
        add(a[0], b[0], cin, cout2[0], sum[0]);
        for(int i = 1; i <=99; i++) begin
            add(a[i], b[i], cout2[i-1], cout2[i], sum[i]);
        end
        cout = cout2[99];

    end
*/