module ripple_carry_adder(A,B,Cin,Sum,Cout);
  
  parameter N = 8;
  
  input [N-1:0] A;
  input [N-1:0] B;
  input Cin;
  output  reg [N-1:0] Sum;
  output reg Cout;
  
  reg [N:0]c;
  
  always @ (*)
    begin
   c[0] = Cin;
   

  for(integer i=0;i< N;i=i+1)
    begin
      Sum[i] = A[i]^B[i]^c[i];
      c[i+1] = A[i]&B[i] | B[i]&c[i] | A[i]&c[i]; 
    end
      Cout = c[N];
    end
  
endmodule