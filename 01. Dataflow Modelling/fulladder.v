module full_adder(a,b,c,sum,cout);
  
  //direction of the ports
  input a,b,c;
  output sum,cout;
  
  //logic-data flow model
  assign sum=a^b^c;
  assign cout=a&b|b&c|c&a;
  
endmodule