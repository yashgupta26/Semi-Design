module tb;
  
  reg [2:0] a;
  reg [3:0] b;
  reg [6:0] c;
  
  initial begin
    $monitor("a=%0b,b=%0b,c=%0b",a,b,c);
    
    $display("Concatenation----------------------");
    assign c = {2{a,b}};
    a=4'b000;b=4'b0000; #5
    a=4'b000;b=4'b0010;#5
    a=4'b100;b=4'b0010;#5
    a=4'b100;b=4'b00x0; #5 

     #5 $finish;
  end
endmodule
