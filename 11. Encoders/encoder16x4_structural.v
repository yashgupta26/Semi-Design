`include "encoder4x2.v"

module encoder16x4(in,out,eo);
  
  input [15:0] in;
  output [3:0] out;
  output eo;
  
  wire [7:0]w;
  wire [3:0]g;
  
  encoder4x2 E3 (in[15:12],w[7:6],g[3]);
  encoder4x2 E2 (in[11:8],w[5:4],g[2]);
  encoder4x2 E1 (in[7:4] ,w[3:2],g[1]);
  encoder4x2 E0 (in[3:0] ,w[1:0],g[0]);
  
  encoder4x2 E4 (g[3:0],out[3:2],eo);
  
  assign out[1] = (w[7] | w[5] | w[3] | w[1]);
  assign out[0] = (w[6] | w[4] | w[2] | w[0]);
  
endmodule