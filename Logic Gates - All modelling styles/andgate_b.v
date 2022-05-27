module andgate (a,b,y);
  
  input a,b;
  output reg y;
  
  always @ (a,b)
    begin
      case({a,b})
        2'b00: y=0;
        2'b01: y=0;
        2'b10: y=0;
        2'b11: y=1;
      endcase
    end
  
  
endmodule
