module xnorgate(a,b,y);
  
  input a,b;
  output reg y;
  
  always @ (a,b)
    case ({a,b})
      2'b00:y=1;
      2'b01:y=0;
      2'b10:y=0;
      2'b11:y=1;
    endcase
  
endmodule