module mux2x1(i,s,y);

input [1:0]i;
input s;
output y;
assign y = ~s&i[0] | s&i[1];
  
endmodule
