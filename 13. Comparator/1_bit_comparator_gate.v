module comparator1 (a,b,lt,eq,gt);
  
  input a,b;
  output lt,gt,eq;
  
  wire s1, s2;
  not X1(s1, a);
  not X2 (s2, b);
  and X3 (lt,s1, b);
  and X4 (gt,s2, a);
  xnor X5 (eq, a, b);
  
endmodule