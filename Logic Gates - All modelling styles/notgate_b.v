module notgate(a,y);
  
  input a;
  output reg y;
  
  always @ (a)
    begin
      case (a)
        1'b0:y=1;
        1'b1:y=0;
      endcase
    end
  
endmodule