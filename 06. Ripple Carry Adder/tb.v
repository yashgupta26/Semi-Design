module tb;
  
  reg [3:0] x;
  reg [3:0] y;
  reg z;
  wire cry;
  wire [3:0]s;
  
  ripple_carry_adder uut (.A(x),.B(y),.Cin(z),.Sum(s),.Cout(cry));
  
  initial begin
    $monitor("t=%0t  x=%0d,y=%0d,z=%0d,  Sum=%0d,Carry=%0d",$time,x,y,z,s,cry);
    x=4'b0001; y=4'b0100; z=1'b0; #5
    x=4;y=13;z=0; #5
    x=14;y=13; #5
    x=10;y=2;z=1; #5
    x=15;y=15;z=1; #5    
    $finish;
  end

  initial begin
      $dumpfile("wave.vcd");
      $dumpvars;
  end
  
endmodule