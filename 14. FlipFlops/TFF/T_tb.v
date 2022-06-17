module t_ff_tb();
    
    reg t,clk,rst;
    wire q;
    
  t_ff uut (t,clk,q,rst);
    
    always #5 clk = ~clk;
    
    initial begin
        
      $monitor("Time = %3t,DT= %b,Q = %b rst = %b",$time,t,q,rst);
        
        clk = 0;
        rst = 0;    
        t = 0; #20
        t = 1; #7
        
      
        
        rst = 1;   
        t = 0; #20
        t = 1;  #20
                
        $finish;
        
    end
    
    initial
    begin
        
        $dumpfile("ff.vcd");
        
        $dumpvars;
        
    end
    
endmodule
