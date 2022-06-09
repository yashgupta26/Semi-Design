module tb;
  
  reg [2:0] a;
  reg [2:0] b;
  reg [3:0] c;
  reg [3:0] d;
  
  initial begin
    a=3'b010;b=3'b110;c=4'b1001;d=4'b1110;
    $display("ans = %0b",(a>b) ? c: d);
    $display("ans = %0b",(a<=b) ? c: d);
    $display("ans = %0b",(a!=b) ? c: d);
    $display("ans = %0b",(a==b) ? c: d);
    a=3'b01x;b=3'b01x;
    $display("ans = %0b",(a===b) ? c: d);
    
    #5 $finish;
  end 
  
endmodule
