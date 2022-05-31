module nandgate (a,b,y);
  
  input a,b;
  output reg y;
  
  always @ (a,b)
    begin
      case({a,b})
        2'b00: y=1;
        2'b01: y=1;
        2'b10: y=1;
        2'b11: y=0;
      endcase
    end
  
  
endmodule