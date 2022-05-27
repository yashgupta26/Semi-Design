module norgate(a,b,y);
  
  input a,b;
  output y;
  wire w;
  
  or g1 (w,a,b);
  not n1 (y,w);
  
endmodule
