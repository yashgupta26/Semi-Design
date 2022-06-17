// Code your testbench here
// or browse Examples
module jk_ff_tb();
    
    reg j,k,clk,rst;
    wire q;
    
    jk_ff uut (j,k,clk,q,rst);
    
    always #5 clk = ~clk;
    
    initial begin
        
      $monitor("Time = %3t,J = %b, K = %b,Q = %b rst = %b",$time,j,k,q,rst);
        
        clk = 1;
        rst = 0;
        
        j = 0; k = 0; #20
        j = 0; k = 1; #20
        j = 1; k = 0; #7
        rst = 1; #5
        rst = 0; #5
        j = 1; k = 1; #20
        
        rst = 1;
        
        j = 0; k = 0; #20
        j = 0; k = 1; #20
        j = 1; k = 0; #20
        rst = 0; #5
        rst = 1; #5
        j = 1; k = 1; #20
        
        $finish;
        
    end
    
    initial
    begin
        
        $dumpfile("ff.vcd");
        $dumpvars;
        
    end
    
endmodule
