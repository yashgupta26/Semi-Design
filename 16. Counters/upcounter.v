module counter(clk,rst,Count);
  
  input clk,rst;
  output reg[3:0] Count;
  
  always@(posedge clk)
    if(rst)
      Count<=4'b0000;
  	else
      Count <= Count+1;
  
endmodule