module bcd2seven(A,B,C,D,a,b,c,d,e,f,g);
  
  input A,B,C,D;
  output a,b,c,d,e,f,g;
  
  assign a = B&~C&~D | ~A&~B&~C&D ;
  assign b =  B&~C&D | B&C&~D;
  assign c = ~B&C&~D; 
  assign d = B&~C&~D | B&C&D | ~A&~B&~C&D ;
  assign e = B&~C | D;
  assign f = C&D |  ~A&~B&D | ~A&~B&C;
  assign g = ~A&~B&~C | B&C&D;
  
endmodule