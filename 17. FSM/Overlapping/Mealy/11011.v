module sd_11011(clk,rst,signal,out);
  
  input clk,rst,signal;
  output reg out;
  
  parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
  
  reg[2:0] ps,ns;
  
  always@(posedge clk or negedge rst)
    if(!rst)
      ps<=s0;
  	else 
      ps<=ns;
  
  always@(ps,signal)
    begin
      case(ps)
        s0:ns<=(signal==1)?s1:s0;
        s1:ns<=(signal==1)?s2:s1;
        s2:ns<=(signal==0)?s3:s2;
        s3:ns<=(signal==1)?s4:s0;
        s4:ns<=(signal==1)?s2:s0;
      endcase
    end
  
  always@(posedge clk,negedge rst)
     if (!rst)
       out <= 0;
      else
        out<= (ps == s4) && signal;
  
endmodule