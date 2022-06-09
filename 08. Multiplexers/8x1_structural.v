`include "2x1_dataflow.v"
module mux8x1(i,s,y);
  
  input [7:0] i;
  input [2:0] s;
  output y;
  wire [5:0] w;
  
  mux2x1 M1 (i[1:0],s[0],w[0]);
  mux2x1 M2 (i[3:2],s[0],w[1]);
  mux2x1 M3 (i[5:4],s[0],w[2]);
  mux2x1 M4 (i[7:6],s[0],w[3]);
  mux2x1 M5 (w[1:0],s[1],w[4]);
  mux2x1 M6 (w[3:2],s[1],w[5]);
  mux2x1 M7 (w[5:4],s[2],y);
  
endmodule