module jk_ff(j,k,clk,q,rst);
    input j,k,clk,rst;
    output reg q;
    
  always@(negedge clk or negedge rst )//asynchronous reset
    begin
        if (rst)
            q = 0;
        else
        begin
          case({j,k})
                2'b00: q = q;
                2'b01: q = 0;
                2'b10: q = 1;
                2'b11: q = ~q;
            endcase
        end
    end
    
endmodule
