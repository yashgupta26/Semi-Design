module d_ff(d,clk,q,rst);
    input d,clk,rst;
    output reg q;
    
  always@(negedge clk)//synchronous reset
    begin
        if (!rst)//rst == 0 or !rst -- Active  Low Reset
        	q = 0;
        else
        q=d;
    end
    
endmodule
