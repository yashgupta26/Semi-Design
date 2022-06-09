`include "halfadder.v"



module fulladder (input x,y,z, output s,c);
  
  wire w1,w2,w3;
  halfadder h0 (x,y,w1,w2);
  halfadder h1 (w1,z,s,w3);
  or o1 (c,w2,w3);  
  
endmodule