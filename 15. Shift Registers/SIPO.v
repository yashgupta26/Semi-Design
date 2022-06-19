module SIPO(D,clk,clr,Q);
  input D,clk,clr;
  output reg [3:0]Q;
  
  always@(posedge clk or posedge clr)
    begin
      if(clr)
        Q=4'b0000;
      else
        begin
          Q[0]<=D;
          Q[1]<=Q[0];
          Q[2]<=Q[1];
          Q[3]<=Q[2];
        end
    end
endmodule