module t_ff(t,clk,q,rst);
    input t,clk,rst;
    output reg q;
    
  always@(posedge clk or posedge rst)//synchronous reset
    begin
        if (!rst)//rst == 0 or !rst -- Active  Low Reset
        	q = 0;
        else
          case(t)
            0:q<=q;
            1:q<=~q;
          endcase
    end
    
endmodule
