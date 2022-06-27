module seq1001(clk,
               rst,
               signal,
               out);
    
    input clk,rst,signal;
    output reg out;
    
    parameter s0 = 2'b00,s1 = 2'b01,s2 = 2'b10,s3 = 2'b11 ;
    reg [1:0] ps,ns;
    
    always@(posedge clk,negedge rst)
    begin
        if (!rst)
            ps <= s0;
        else
            ps <= ns;
    end
    
    always @(ps,signal) begin
        if (ps == s0)
            ns <= (signal == 1)?s1:s0;
        else if (ps == s1)
            ns <= (signal == 0)?s2:s1;
        else if (ps == s2)
            ns <= (signal == 0)?s3:s1;
        else if (ps == s3)
            ns <= (signal == 1)?s1:s0;
     end
        
        always@(posedge clk,negedge rst)
            if (!rst)
                out <= 0;
            else
                out<= (ps == s3) && signal;
        
        
        
        endmodule
