module s_r_ff_tb();
    
    reg s,r,clk,rst;
    wire q;
    
    s_r_ff uut (s,r,clk,q,rst);
    
    always #5 clk = ~clk;
    
    initial begin
        
      $monitor("Time = %3t,S = %b, R = %b,Q = %b rst = %b",$time,s,r,q,rst);
        
        clk = 1;
        rst = 0;
        
        s = 0; r = 0; #20
        s = 0; r = 1; #20
        s = 1; r = 0; #7
        rst = 1; #5
        rst = 0; #5
        s = 1; r = 1; #20
        
        rst = 1;
        
        s = 0; r = 0; #20
        s = 0; r = 1; #20
        s = 1; r = 0; #20
        s = 1; r = 1; #20
        
        $finish;
        
    end
    
    initial
    begin
        
        $dumpfile("ff.vcd");
        
        $dumpvars;
        
    end
    
endmodule
