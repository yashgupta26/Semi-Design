`include "encoder4x2_gatelevel.v"

module encoder16x4(in,out);
  
  input [15:0] in;
  output [3:0] out;
  
  wire [7:0]w;
  
  encoder4x2 E0 (in[3:0],w[1:0]);
  encoder4x2 E1 (in[7:4],w[3:2]);
  encoder4x2 E2 (in[11:8],w[5:4]);
  encoder4x2 E3 (in[15:12],w[7:6]);
  encoder4x2 E4 (w[7:4],out[3:2]);
  encoder4x2 E5 (w[3:0],out[1:0]);
  
endmodule