module tb;
  
  reg a,b;
  wire lt,gt,eq;
  
  comparator1 dut(a,b,lt,eq,gt);
  
  initial begin
    $monitor("a=%b,b=%b,lt=%b,eq=%b,gt=%b",a,b,lt,eq,gt);
    a=0;b=0; #5
    a=0;b=1; #5
    a=1;b=0; #5
    a=1;b=1; #5
    $finish;
  end
  
  
endmodule