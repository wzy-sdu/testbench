module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    integer i;
    wire [3:0] cout;
    assign sum[0] = x[0] ^ y[0];
    assign cout[0] = x[0] & y[0];
    always @(*) begin
        for(i = 1; i < 4; i=i+1) begin
            sum[i] = x[i] ^ y[i] ^ cout[i-1];
            cout[i] = x[i] & y[i] | x[i] & cout[i-1] | y[i] & cout[i-1];
        end
        sum[4] = cout[3];
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
    
    wire [3:0] cout;
    always@(*) begin
        add(x[0],y[0],0,cout[0],sum[0]);
        add(x[1],y[1],cout[0],cout[1],sum[1]);
        add(x[2],y[2],cout[1],cout[2],sum[2]);
        add(x[3],y[3],cout[2],cout[3],sum[3]);
        sum[4] = cout[3];
    end
*/
