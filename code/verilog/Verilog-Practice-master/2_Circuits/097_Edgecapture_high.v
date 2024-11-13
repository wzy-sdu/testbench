module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    
    reg [31:0] old, result, tmp;
    initial tmp = 0;
    always @(posedge clk) begin
        if(reset) begin
            old = in;
            result = 0;
            out = 0;
        end
        else begin
            tmp = (in ^ old) & old;
            result = result | tmp;
            out = result;
            old = in;
        end
    end

endmodule
/*reg [31:0] capture;
    
    always @(posedge clk) begin
        if(!reset) begin
        for(int i = 0; i < 32; i++) begin
            if(capture[i] == 1 && in[i] == 0)
                out[i] = 1;
            else
                out[i] = 0;
        end
        capture = in;
    end
        else begin
            out = 0;
            capture = in;
        end
    end
??为啥不行*/