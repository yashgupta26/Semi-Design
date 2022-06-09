module tb;
  
  parameter N = 8;
  
  reg [N-1:0] x;
  reg [N-1:0] y;
  reg z;
  wire cry;
  wire [N-1:0]s;
  
  ripple_carry_adder uut (.A(x),.B(y),.Cin(z),.Sum(s),.Cout(cry));
  
  initial begin
    $display("Time    X    Y    Z  Carry Sum");
    $monitor("%4t %4d %4d %4d %4d %4d",$time,x,y,z,cry,s);
    x=4'b0001; y=4'b0100; z=1'b0; #5
    x=4;y=133;z=0; #5
    x=141;y=13; #5
    x=10;y=2;z=1; #5
    x=155;y=125;z=1; #5    
    $finish;
  end
endmodule