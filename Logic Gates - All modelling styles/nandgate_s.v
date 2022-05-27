module nandgate(a,b,y);
  
  input a,b;
  output y;
  wire w;
  
  and g1 (w,a,b);
  not n1 (y,w);
  
endmodule