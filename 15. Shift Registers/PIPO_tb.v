module tb;
  
  reg clk,clr;
  reg [3:0] D;
  wire [3:0]Q;
  
  PIPO uut (D,clk,clr,Q);
  
  always #5 clk=~clk;
  
  initial begin
    $monitor("Time=%2t  D=%0b, clr=%0b, Q=%b",$time,D,clr,Q);
    clr=1;clk=0;
    #5
    clr = 0;D=4'b1110;#10
    D=4'b0010; #5
    D=4'b1001; #15   
    $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end
    
endmodule