module counter(D,clk,rst,load,updown,Count);
  
  input clk,rst,load,updown;
  input [3:0]D;
  output reg[3:0] Count;
  
  always@(posedge clk)
    if(rst)
      Count<=4'b0000;
  else if(load)
      Count<=D;
  else if(updown)
      Count <= Count+1;
  else
      Count<= Count-1;
  
endmodule