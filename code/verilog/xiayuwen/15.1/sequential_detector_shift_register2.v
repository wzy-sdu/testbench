module sequential_detector_shift_register
(
   input wire clk,
   input wire rst,
   input wire x,
   output wire z
);
 
reg [4:0] q;
 
assign z = (q == 5'b10010) ? 1'b1:1'b0;
 
always @ (posedge clk,negedge rst)
   if(!rst)
      q <= 5'd0;
   else
      q <= {q[3:0],x};
 //晚了1个周期,要等q更新
endmodule

