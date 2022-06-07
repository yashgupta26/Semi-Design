module mux4x1(i,s,y);
  
  input [3:0] i;
  input [1:0] s;
  output y;
	  
  wire w1,w2,w3,w4,w5,w6;  

  not g0(w1,s[0]);
  not g1(w2,s[1]);
  and g2(w3,i[0],w1,w2);
  and g3(w4,i[1],w2,s[0]);
  and g4(w5,i[2],s[1],w1);
  and g5(w6,i[3],s[1],s[0]);
  or g6(y,w3,w4,w5,w6);
  
  
endmodule