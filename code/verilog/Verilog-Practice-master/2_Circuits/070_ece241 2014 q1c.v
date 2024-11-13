module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    assign s = a + b;
    assign overflow = (a[7] == b[7] && a[7] != s[7]) ? 1 : 0;

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
    
    wire [7:0] cout;
    always@(*) begin
        
        add(a[0], b[0], 0, cout[0], s[0]);
        for(int i = 1; i <=7; i++) begin
            add(a[i], b[i], cout[i-1], cout[i], s[i]);
        end
        overflow = cout[7]^s[7];
        
        
    end
搞不懂为啥不对99+05=104也会溢出的*/