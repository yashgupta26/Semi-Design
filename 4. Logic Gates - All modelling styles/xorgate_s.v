module xorgate(a,b,y);
  
  input a,b;
  output y;
  
  wire w1,w2,w3,w4;
  
  not n1 (w1,a);
  not n2 (w2,b);
  and a1 (w3,w1,b);
  and a2 (w4,w2,a);
  or o1 (y,w3,w4);
  
endmodule