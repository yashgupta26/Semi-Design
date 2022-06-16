module d_ff(d,clk,q,rst);
    input d,clk,rst;
    output reg q;
    
  always@(negedge clk or posedge rst)//asynchronous reset
    begin
        if (rst)
        	q = 0;
        else
        q=d;
    end
    
endmodule
