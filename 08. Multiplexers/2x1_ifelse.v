module mux2x1(i,s,y);

input [1:0]i;
input s;
output reg y;
always @(i,s)
begin
  if(s==0)
  y=i[0];
  else
  y=i[1];
end
endmodule