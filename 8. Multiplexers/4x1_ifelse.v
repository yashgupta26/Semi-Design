module mux4x1(i,s,y);
  
  input [3:0] i;
  input [1:0] s;
  output reg y;
  
  always@(i,s)
    begin
      if(s==2'b00)
         y = i[0];
      else if (s==2'b01)
         y = i[1];
      else if (s==2'b10)
          y = i[2];
      else
          y = i[3]; 
      endcase
    end  
  
endmodule