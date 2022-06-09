`include "2x1_case.v"
module mux4x1(i,s,y);
  
  input [3:0] i;
  input [1:0] s;
  output y;
  wire w[1:0];
  
  mux2x1 M1 (i[1:0],s[0],w[0]);
  mux2x1 M2 (i[3:2],s[0],w[1]);
  mux2x1 M3 (w[1:0],s[1],y);
  
  
endmodule