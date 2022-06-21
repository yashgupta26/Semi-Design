module tb;
  
  reg clk,rst,load,updown;
  reg [3:0]D;
  wire [3:0] Count;
  
  counter uut (D,clk,rst,load,updown,Count);
  
  always #5 clk=~clk;
  
  initial begin
    $monitor("Time=%0t,clk=%0b,rst=%0b,load=%0b,D=%0b,updown=%0b,Count=%d",$time,clk,rst,load,D,updown,Count);
    rst=1; clk=0;updown=1; #15
    rst=0;#20
    load=1; D=4'b1001;  #10
    load=0;#30
    rst=1;#10;rst=0;#55
    updown=0; #50
    $finish;    
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end
  
endmodule