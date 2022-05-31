module norgate(a,b,y);
  
  input a,b;
  output y;
  
  nor g1 (y,a,b);
  
endmodule