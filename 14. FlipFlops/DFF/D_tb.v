module d_ff_tb();
    
    reg d,clk,rst;
    wire q;
    
  d_ff uut (d,clk,q,rst);
    
    always #5 clk = ~clk;
    
    initial begin
        
      $monitor("Time = %3t,D = %b,Q = %b rst = %b",$time,d,q,rst);
        
        clk = 0;
        rst = 0;    
        d = 0; #20
        d = 1; #7
        rst = 1; #5 rst = 0; #5
      
        
        rst = 1;   
        d = 0; #20
        d = 1;  #7
        rst = 0; #5 rst = 1; #5
        
        $finish;
        
    end
    
    initial
    begin
        
        $dumpfile("ff.vcd");
        
        $dumpvars;
        
    end
    
endmodule
