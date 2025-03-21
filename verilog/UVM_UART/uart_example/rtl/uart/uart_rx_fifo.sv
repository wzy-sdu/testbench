//----------------------------------------------------------------------
//   Copyright 2011 Mentor Graphics Corporation
//   All Rights Reserved Worldwide
//
//   Licensed under the Apache License, Version 2.0 (the
//   "License"); you may not use this file except in
//   compliance with the License.  You may obtain a copy of
//   the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in
//   writing, software distributed under the License is
//   distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
//   CONDITIONS OF ANY KIND, either express or implied.  See
//   the License for the specific language governing
//   permissions and limitations under the License.
//----------------------------------------------------------------------

//
// This is a 16 deep 11 bit wide FIFO
// that keeps track of its size
//
module uart_rx_fifo(
  input clk,
  input rstn,
  input push,
  input pop,
  input [10:0] data_in,
  output logic fifo_empty,
  output logic fifo_full,
  output logic[4:0] count,
  output logic[10:0] data_out);

logic[3:0] ip_count;//0-15 下一个写入的位置
logic[3:0] op_count;//下一个读取的位置
typedef logic[10:0] fifo_t;

fifo_t data_fifo[15:0]; // =data_fifo[15:0] logic[10:0] 16个11位

always @(posedge clk)
  begin
    if(rstn == 0) begin
      count <= 0;
      ip_count <= 0;
      op_count <= 0;
      foreach(data_fifo[i]) begin
        data_fifo[i] = 0;
      end
    end
    else begin
      case({push, pop})//{pop出, push进}?
        2'b01: begin
                 if(count > 0) begin
                   op_count <= op_count + 1;
                   count <= count - 1;
                 end
               end
        2'b10: begin
                 if(count <= 5'hf) begin//count <= 15 共16
                   ip_count <= ip_count + 1;//<=并行处理
                   data_fifo[ip_count] <= data_in;//ip_count为旧值
                   count <= count + 1;
                 end
               end
        2'b11: begin
                 op_count <= op_count + 1;
                 ip_count <= ip_count + 1;
                 data_fifo[ip_count] <= data_in;
               end
      endcase
    end
  end

always_comb
  data_out = data_fifo[op_count];

always_comb
  fifo_empty = ~(|count);

always_comb
  fifo_full = (count == 5'b10000);



endmodule: uart_rx_fifo
