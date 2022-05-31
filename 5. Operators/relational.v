module tb;
  
  reg [2:0]a;
  reg [2:0]b;
  reg [2:0]c;
  
  initial
    begin
      $monitor("a=%0b,b=%0b,c=%0b",a,b,c);
      
      $display("Less Than----------------------");
      assign c = a<b;
      a=3'b000;b=3'b101; #5
      a=3'b111;b=3'b101; #5
      a=3'bxxx;b=3'b101; #5
      
      $display("\nGreater Than-----------------------");
      assign c = a>b;
      a=3'b000;b=3'b000; #5
      a=3'b011;b=3'b101; #5
      a=3'b110;b=3'b101; #5
      a=3'bxxx;b=3'b000; #5
      
      $display("\nLess Than or equals to-----------------------");
      assign c = a<=b;
      a=3'b000;b=3'b000; #5
      a=3'b011;b=3'b101; #5
      a=3'b110;b=3'b101; #5
      a=3'bxxx;b=3'b000; #5
      
      $display("\nGreater Than or equals to-----------------------");
      assign c = a>=b;
      a=3'b000;b=3'b000; #5
      a=3'b111;b=3'b101; #5
      a=3'b001;b=3'b101; #5
      a=3'b010;b=3'b1x0; #5
      
      $finish;
    end
  
endmodule