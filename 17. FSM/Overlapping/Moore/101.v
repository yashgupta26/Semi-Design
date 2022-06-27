module cd_101(clk,signal,out,rst);
  input clk,rst,signal;
  output out;
  parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
  reg [1:0]ps,ns;
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
        ns<=(signal==0)?s2:s1;
      else if(ps==s2)
        ns<=(signal==1)?s3:s0;
      else if(ps==s3)
        ns<=(signal==1)?s1:s2;
    end
  //output logic
  assign out=(ps==s3)?1:0;
endmodule