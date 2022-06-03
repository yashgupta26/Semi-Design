module ripple_carry_adder(A,B,Cin,Sum,Cout);
  
  parameter N = 8;
  
  input [N-1:0] A;
  input [N-1:0] B;
  input Cin;
  output [N-1:0] Sum;
  output Cout;
  
  wire [N:0] C;
  assign C[0] = Cin;  
  
  for(genvar i=0;i< N;i=i+1)
    begin
      wire t1,t2,t3;
      xor g1(t1,A[i],B[i]);
      xor g2(Sum[i],t1,C[i]);
      and g3(t2,A[i],B[i]);
      and g4(t3,t1,C[i]);
      or  g5(C[i+1],t2,t3);
    end
     
  assign Cout = C[N];
  
endmodule