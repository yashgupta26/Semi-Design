module mux2x1(i,s,y);

input [1:0]i;
input s;
output y;
wire w1,w2,w3;  
assign y = ~s&i[0] | s&i[1];
  not g0(w1,s);
  and g1(w2,i[0],w1);
  and g2(w3,i[1],s);
  or g3(y,w2,w3);
  
endmodule
