module s_r_ff(s,r,clk,q,rst);
    input s,r,clk,rst;
    output reg q;
    
  always@(negedge clk or negedge rst )//asynchronous reset
    begin
      if (!rst)
            q = 0;
        else
        begin
            case({s,r})
                2'b00: q = q;
                2'b01: q = 0;
                2'b10: q = 1;
                2'b11: q = 1'bx;
            endcase
        end
    end
    
endmodule
