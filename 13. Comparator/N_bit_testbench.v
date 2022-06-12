module tb;
  
  reg [3:0] a,b;
  wire gt,eq,lt;
  
  comparator dut (a,b,gt,eq,lt);
  
  initial begin
    $monitor("a=%d,b=%d,gt=%b,eq=%b,lt=%b",a,b,gt,eq,lt);
    a=8;b=2; #5
    a=7;b=12; #5
    a=5;b=5; #5
    $finish;
  end  
  
endmodule