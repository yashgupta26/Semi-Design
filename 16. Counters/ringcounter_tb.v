module tb;
  
  reg clk,rst;
  wire [3:0] Count;
  
  ring_counter uut (clk,rst,Count);
  
  always #5 clk=~clk;
  
  initial begin
    $monitor("Time=%0t,clk=%0b,rst=%0b,Count=%b",$time,clk,rst,Count);
    rst=1; clk=0;#15
    rst=0;#50
    $finish;    
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end
  
endmodule