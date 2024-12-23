module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q); 

    always @(posedge clk or posedge areset) begin
        if(areset) begin
            q <= 0;
        end
        else begin
            if(load == 1) begin
                q <= data;  
            end
            else begin
                if(ena == 1) begin
                    /*q[0] = q[1];
                    q[1] = q[2];
                    q[2] = q[3];
                    q[3] = 0;*/
                    q = q >> 1;
                end
            end
        end
    end
    
endmodule
/*reg [3:0] temp;
    always @(posedge clk or posedge areset) begin
        if(areset)
            temp = 0;
        else if(load)
            temp = data;
        else if(ena) begin
            temp[0] = temp[1];
            temp[1] = temp[2];
            temp[2] = temp[3];
            temp[3] = 0;
            //temp = temp >> 1;
        end
        else
            temp = temp;
    end
    
    assign q = temp;
*/