module tb;
  
  reg [3:0] a;
  reg [3:0] c;
  
  initial begin
    $monitor("a=%0b,c=%0b",a,c);
    
    $display("\nLogical Left Shift-----------------------");
    assign c = a<<1;
    a=4'b0100; #5
    a=4'b1000; #5
    a=4'b0001; #5
    
    $display("\nLogical Right Shift-----------------------");
    assign c = a>>1;
    a=4'b0100; #5
    a=4'b1000; #5
    a=4'b0001; #5   
    
    $display("\nArithmetic Left Shift-----------------------");
    assign c = a<<<1;
    a=4'b0100; #5
    a=4'b1000; #5
    a=4'b0001; #5
    
    $display("\nArithmetic Right Shift-----------------------");
    assign c = a>>>1;
    a=4'b0100; #5
    a=4'b1000; #5
    a=4'b0001; #5
    
    $finish;
    
  end
  
  
endmodule

