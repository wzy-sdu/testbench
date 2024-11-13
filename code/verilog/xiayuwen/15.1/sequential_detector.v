module  sequential_detector(
    input clk,
    input rst,
    input x,
    output z
);//10010
    reg [2:0] state;
    wire z;

    parameter idle = 3'd0,
                A = 3'd1,
                B = 3'd2,
                C = 3'd3,
                D = 3'd4;

    assign z = (state == D && x == 0) ? 1 : 0;

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= idle;
        end
        else
            case (state)
                idle: if(x==1)
                      state <= A;
                      else
                      state <= B;
                A:    if(x==0)
                        state <= B;
                        else
                        state <= A;
                B:    if(x==0)
                        state <= C;
                        else
                        state <= A;
                C:    if(x==1)
                        state <= D;
                        else
                        state <= A;
                D:    if(x==0)
                        state <= B;
                        else
                        state <= A;
                default: state <= idle;
            endcase
    end

                


    
endmodule