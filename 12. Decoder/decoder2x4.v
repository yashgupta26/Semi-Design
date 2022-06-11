module decoder_2x4 (w,e,y);
  
  input [1:0]w;
  input e;
  output reg [0:3] y;
  
  always@(w,e)
    begin 
      if(e==0)
        y = 4'b0000;
      else
        case(w)
          0:y=4'b1000;
          1:y=4'b0100;
          2:y=4'b0010;
          3:y=4'b0001;
          
        endcase
    end
  
  
endmodule