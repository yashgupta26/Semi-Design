module tb;
  
  reg a;
  wire y;
  
  notgate g (a,y);
  
  initial begin
    $monitor("t=%0t,  a=%0b,y=%0b",$time,a,y);
    a=0; #5
    a=1; #5
    $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end
  
endmodule
