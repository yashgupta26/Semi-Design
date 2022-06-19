module tb;
  
  reg clk,clr;
  reg D;
  wire Q;
  
  SISO uut (D,clk,clr,Q);
  
  always #5 clk=~clk;
  
  initial begin
    $monitor("Time=%2t  D=%0b, clr=%0b, Q=%b",$time,D,clr,Q);
    clr=1;clk=0;
    #5
    clr = 0;D=1;#10
    D=0;#10
    D=1;#10
    D=0;#10
  
    #30
    $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end
    
endmodule