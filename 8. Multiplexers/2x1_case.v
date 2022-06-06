module mux2x1(i,s,y);

input [1:0]i;
input s;
output reg y;
always @(i,s)
begin
case(s)
0:y=i[0];
1:y=i[1];
endcase
end
endmodule
