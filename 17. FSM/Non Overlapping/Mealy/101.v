module sd_101(clk,rst,signal,out);
  
  input clk,rst,signal;
  output reg out;
  
  parameter s0=2'b00,s1=2'b01,s2=2'b10;
  
  reg[1:0] ps,ns;
  
  always@(posedge clk or negedge rst)
    if(!rst)
      ps<=s0;
  	else 
      ps<=ns;
  
  always@(ps,signal)
    begin
      case(ps)
        s0:ns<=(signal==1)?s1:s0;
        s1:ns<=(signal==0)?s2:s1;
        s2:ns<=s0;
      endcase
    end
  
  always@(posedge clk,negedge rst)
     if (!rst)
       out <= 0;
      else
        out<= (ps == s2) && signal;
  
endmodule