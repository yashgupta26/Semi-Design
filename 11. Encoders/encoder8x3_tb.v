module tb;
  
  reg [7:0] in;
  wire [2:0] out;
  
  encoder8x3 dut (in,out);
  
  initial begin
    $monitor("in = %b;out=%b",in,out);
    in=8'b0000_0001; #5
    in=8'b0000_0010; #5
    in=8'b0000_0100; #5
    in=8'b0000_1000; #5
    in=8'b0001_0000; #5
    in=8'b0010_0000; #5
    in=8'b0100_0000; #5
    in=8'b1000_0000; #5
    $finish;
  end
  
endmodule
