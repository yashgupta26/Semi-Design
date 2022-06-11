module encoder4x2 (in,out,eo);
  
  input [3:0] in;
  output [1:0] out;
  output eo;
  
  assign out[1] = in[3]|in[2];
  assign out[0] = in[3]|in[1];
  assign eo = |in;
  
endmodule