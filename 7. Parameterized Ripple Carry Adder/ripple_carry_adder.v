`include "fulladder.v"

module ripple_carry_adder(A,B,Cin,Sum,Cout);
  
  parameter N = 8;
  
  input [N-1:0] A;
  input [N-1:0] B;
  input Cin;
  output [N-1:0] Sum;
  output Cout;
  
  wire [N:0]c;
  assign c[0] = Cin;
  

  for(genvar i=0;i< N;i=i+1)
    begin
      fulladder FA (.a(A[i]),.b(B[i]),.c(c[i]),.sum(Sum[i]),.cout(c[i+1]));  
    end
  assign Cout = c[N];
  
endmodule