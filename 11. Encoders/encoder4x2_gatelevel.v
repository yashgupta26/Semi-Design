module encoder4x2 (in,out);
  
  input [3:0] in;
  output [1:0] out;
  
  wire w1,w2;
  
  not g0(w1,in[1]);
  not g1(w2,in[0]);
  and g2 (out[1],w1,w2);
  or g3 (out[0],in[1],in[3]);
  
endmodule