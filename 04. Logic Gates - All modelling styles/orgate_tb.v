module tb;
  
  reg a,b;
  wire y;
  
  orgate g (a,b,y);
  
  initial begin
    $monitor("t=%0t,  a=%0b,b=%0b,y=%0b",$time,a,b,y);
    a=0;b=0; #5
    a=0;b=1; #5
    a=1;b=0; #5
    a=1;b=1; #5
    $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end
  
endmodule