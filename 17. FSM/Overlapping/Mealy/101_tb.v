module tb;
 
  reg clk,rst,signal;
  wire out;
  
  sd_101 DUT(clk,rst,signal,out);
  
  initial begin
    clk=0;rst=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    $monitor("Time =  %0t,clk=%0b,signal=%0b,rst=%0b,out=%0b",$time,clk,signal,rst,out);
    #20
    rst = 1;
    signal = 0; #10
    signal = 1; #10
    signal = 0; #10
    signal = 1; #10
    signal = 0; #10
    signal = 1; #10
    
    repeat(5)
      #10 signal=$random;
    
    #50
    
    $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end
  
  
  
endmodule