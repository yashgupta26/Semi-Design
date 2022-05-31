module tb;
  
  reg [3:0]a ;
  reg [3:0]b;
  reg c;
  
  
  initial begin
    $monitor("a=%0b,b=%0b,c=%0b",a,b,c);
    
    $display("Logical Equality----------------------");
    assign c = a==b;
    a=4'b0000;b=4'b0000; #5
    a=4'b0000;b=4'b0010;#5
    a=4'b0000;b=4'b00x0; #5
 
    
    $display("\nLogical Inequality----------------------");
    assign c = a!=b;
    a=4'b0000;b=4'b0000; #5
    a=4'b0000;b=4'b0010;#5
    a=4'b0000;b=4'b00x0; #5  
    
    
    $display("\nCase Equality----------------------");
    assign c = a===b;
    a=4'b0000;b=4'b0000; #5
    a=4'b0000;b=4'b0010;#5
    a=4'b0000;b=4'b00x0; #5    
    a=4'b00x0;b=4'b00x0; #5    
    
    $display("\nCase Inequality----------------------");
    assign c = a!==b;
    a=4'b0000;b=4'b0000; #5
    a=4'b0000;b=4'b0010;#5
    a=4'b0000;b=4'b00x0; #5    
    a=4'b00x0;b=4'b00x0; #5     
    
    $finish;
    
  end 
  
endmodule