module SISO(D,clk,clr,Q);
  input clk,clr;
  input D;
  output Q;
  
  reg [3:0]T;
  
  always@(posedge clk or posedge clr)
    begin
      if(clr)
        T=4'b0000;
      else
        begin
          T[3]<=T[2];
          T[2]<=T[1];
          T[1]<=T[0];
          T[0]<=D;
        end
    end
  assign Q = T[3];
endmodule