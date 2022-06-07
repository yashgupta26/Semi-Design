module mux8x1(i,s,y);
  
  input [7:0] i;
  input [2:0] s;
  output y;
  
  assign y = (~s[0] & ~s[1] & ~s[2] & i[0]) |(s[0] & ~s[1] & ~s[2] & i[1]) |(~s[0] & s[1] & ~s[2] & i[2]) |(s[0] & s[1] & ~s[2] & i[3]) |(~s[0] & ~s[1] & s[2] & i[4]) |(s[0] & ~s[1] & s[2] & i[5]) |(s[0] & s[1] & s[2] & i[6]) |(s[0] & s[1] & s[2] & i[7]);
  
endmodule