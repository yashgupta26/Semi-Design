`include "decoder2x4.v"

module decoder16x4(w,e,y);
  
  input [3:0]w;
  input e;
  output [0:15]y;
  
  wire [0:3] m;
  
  decoder_2x4 d1 (w[3:2],e,m[0:3]);
  decoder_2x4 d2 (w[1:0],m[0],y[0:3]);
  decoder_2x4 d3 (w[1:0],m[1],y[4:7]);
  decoder_2x4 d4 (w[1:0],m[2],y[8:11]);
  decoder_2x4 d5 (w[1:0],m[3],y[12:15]);
  
endmodule