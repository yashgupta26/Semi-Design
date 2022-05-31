module tb;
  
  reg [2:0]a;
  reg [2:0]b;
  reg [2:0]c;
  
  initial
    begin
      $monitor("a=%0b,b=%0b,c=%0b",a,b,c);
      
      $display("Logical AND----------------------");
      assign c = a&&b;
      a=3'b000;b=3'b101; #5
      a=3'b011;b=3'b101; #5
      a=3'bxxx;b=3'b101; #5
      
      $display("\nLogical OR-----------------------");
      assign c = a||b;
      a=3'b000;b=3'b000; #5
      a=3'b011;b=3'b101; #5
      a=3'bxxx;b=3'b101; #5
      a=3'bxxx;b=3'b000; #5
      
      $display("\nLogical NOT-----------------------");
      assign c = !a;
      a=3'b000; #5
      a=3'b011; #5
      a=3'bx0x; #5
      
      $finish;
    end
  
endmodule