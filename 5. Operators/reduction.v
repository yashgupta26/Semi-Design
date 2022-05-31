module tb;
  
  reg [2:0]a;
  reg c;
  
  initial
    begin
      $monitor("a=%0b,c=%0b",a,c);
      
      $display("Reduction AND----------------------");
      assign c = &a;
      a=3'b000; #5
      a=3'b011; #5
      a=3'bxxx; #5
      
      $display("\nReduction OR-----------------------");
      assign c = |a;
      a=3'b000; #5
      a=3'b011; #5
      a=3'bxxx; #5
      a=3'bxxx; #5
      
      $display("\nReduction NOT-----------------------");
      assign c = ~a;
      a=3'b000; #5
      a=3'b011; #5
      a=3'bx0x; #5
      
      $display("\nReduction NAND----------------------");
      assign c = ~&a;
      a=3'b000; #5
      a=3'b011;#5
      a=3'bxxx; #5
      a=3'b101; #5
      
      $display("\nReduction NOR-----------------------");
      assign c = ~|a;
      a=3'b000; #5
      a=3'b011; #5
      a=3'bxxx;#5
      a=3'bxxx; #5
      
      $display("\nReduction XOR-----------------------");
      assign c = ^a;
      a=3'b000; #5
      a=3'b011; #5
      a=3'bxxx; #5
      a=3'b010;#5
      
      $display("\nReduction XNOR-----------------------");
      assign c = ~^a;
      a=3'b000; #5
      a=3'b011;#5
      a=3'bxxx; #5
      a=3'b010; #5
      
      $finish;
    end
  
endmodule