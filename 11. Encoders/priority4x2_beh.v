module priority_encoder4x2 (in,out);
  
  input [3:0] in;
  output reg [1:0] out;
  
  always@(in)
    if(in[3]==1)
   		out=2'b11;
  	else if(in[2]==1)
      	out=2'b10;
    else if(in[1]==1) 
      	out=2'b01; 
  	else if(in[0] ==1)
      out=2'b00; 

endmodule