module tb;
  
  reg [3:0] in;
  wire [1:0] out;
  
  encoder4x2 dut (in,out);
  
  initial begin
    $monitor("in = %b;out=%b",in,out);
    in=4'b0001; #5
    in=4'b0010; #5
    in=4'b0100; #5
    in=4'b1000; #5
    $finish;
  end
  
endmodule
