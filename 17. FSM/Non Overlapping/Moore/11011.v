module cd_11011(clk,signal,out,rst);
  input clk,rst,signal;
  output out;
  parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101;
  reg [2:0]ps,ns;
  always@(posedge clk,negedge rst) //clk reset condition 
    begin
      if(!rst)
        ps<=s0;
       else
        ps<=ns;      
    end
  //chanege in state 
  always@(ps,signal)
    begin
      if(ps==s0)
        ns<=(signal==1)?s1:s0;
      else if(ps==s1)
        ns<=(signal==1)?s2:s0;
      else if(ps==s2)
        ns<=(signal==0)?s3:s2;
      else if(ps==s3)
        ns<=(signal==1)?s4:s0;
      else if(ps==s4)
        ns<=(signal==1)?s5:s0;
      else if(ps==s5)
        ns<=(signal==1)?s1:s0;
    end
  //output logic
  assign out=(ps==s5)?1:0;
endmodule