`include "4x1_dataflow.v"

module mux16x1(i,s,y);
  
  input [15:0] i;
  input [3:0] s;
  output y;
  wire [3:0] w;
  
  mux4x1 M1 (i[3:0],s[1:0],w[0]);
  mux4x1 M2 (i[7:4],s[1:0],w[1]);
  mux4x1 M3 (i[11:8],s[1:0],w[2]);
  mux4x1 M4 (i[15:12],s[1:0],w[3]);
  mux4x1 M7 (w[3:0],s[3:2],y);
  
endmodule