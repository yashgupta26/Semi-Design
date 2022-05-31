module tb;
  
  reg a1,b1,c1;
  wire s1,cout1;
  
  fulladder uut (.x(a1),.y(b1),.z(c1),.s(s1),.c(cout1));
  
  initial begin
    $monitor("t=%0t  a1=%0b,b1=%0b,c1=%0b,s1=%0b,cout1=%0b",$time,a1,b1,c1,s1,cout1);
    a1=0;b1=0;c1=0; #5
    a1=0;b1=0;c1=1; #5
    a1=0;b1=1;c1=0; #5
    a1=1;b1=0;c1=0; #5
    a1=1;b1=0;c1=0; #5
    a1=1;b1=0;c1=1; #5
    a1=1;b1=1;c1=0; #5
    a1=1;b1=1;c1=1; #5
    $finish;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
  end  
  
endmodule