//`include "sigdata.v"
//`include "ptosda.v"
//`include "out16hi.v"

module top(
output [3:0] data,
output sclk,
output scl,
output sda,
output rst,
output [15:0] outhigh
);
sigdata m0(rst, sclk, data, ptosda.ack);
ptosda m1(rst, sclk, ack, scl, sda, data);
out16hi m2(scl, sda, outhigh);
endmodule