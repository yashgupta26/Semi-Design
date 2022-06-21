module jhonson_counter(clk,rst,Count);
    
    parameter N = 4;
    input clk,rst;
    output reg[N-1:0] Count;
    
    always@(posedge clk)
        if (rst)
        begin
            Count = 0;
        end
        else
        begin
            for(integer i = 0;i<N-1;i = i+1)
                Count[i+1] <= Count[i];
                Count[0]   <= ~Count[N-1];
        end
    
endmodule
