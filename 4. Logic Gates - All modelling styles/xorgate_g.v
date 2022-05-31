module xorgate(a,b,y);

  input a,b;
  output y;
  
  xor x1 (y,a,b);
  
endmodule