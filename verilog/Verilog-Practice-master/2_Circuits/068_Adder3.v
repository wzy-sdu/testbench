module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    integer i;
    assign sum[0] = a[0] ^ b[0] ^ cin;
    assign cout[0] = a[0] & b[0] | a[0] & cin | b[0] & cin;
    always @(*) begin
        for(i = 1; i < 3; i=i+1) begin
            sum[i] = a[i] ^ b[i] ^ cout[i-1];
            cout[i] = a[i] & b[i] | a[i] & cout[i-1] | b[i] & cout[i-1];
        end
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
    
    always@(*) begin
    add(a[0],b[0],cin,cout[0],sum[0]);
    add(a[1],b[1],cout[0],cout[1],sum[1]);
    add(a[2],b[2],cout[1],cout[2],sum[2]);
    end
*/