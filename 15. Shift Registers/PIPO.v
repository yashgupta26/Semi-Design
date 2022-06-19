module PIPO(D,clk,clr,Q);
  input clk,clr;
  input [3:0] D;
  output reg [3:0]Q;
  
  always@(posedge clk or posedge clr)
    begin
      if(clr)
        Q=4'b0000;
      else
        begin
          Q = D;
        end
    end
endmodule