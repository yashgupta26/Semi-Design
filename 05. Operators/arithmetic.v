module tb;
  
  reg [3:0] a;
  reg [3:0] b;
  reg [8:0] c;
  
  initial begin
    $monitor("a=%d,b=%d,c=%d",a,b,c);
    
    assign c=a+b;
    $display("Addition-------------------------------");
    a=4;b=2; #5
    a=14;b=12; #5
    a=0;b=0; #5
    a=17;b=20; #5
    a=15;b=1; #5
    
    assign c=a-b;
    $display("\nSubstraction-------------------------------");
    a=4;b=2; #5
    a=12;b=14; #5
    a=0;b=0; #5
    a=17;b=20; #5
    a=15;b=1; #5
    
    assign c=a*b;
    $display("\nMultiplication-------------------------------");
    a=4;b=2; #5
    a=12;b=14; #5
    a=0;b=0; #5
    a=17;b=2; #5
    a=-15;b=1; #5
    
    assign c=a/b;
    $display("\nDivision-------------------------------");
    a=4;b=2; #5
    a=12;b=14; #5
    a=0;b=0; #5
    a=17;b=2; #5
    a=15;b=4; #5
    
    assign c=a%b;
    $display("\nModulus-------------------------------");
    a=4;b=2; #5
    a=12;b=14; #5
    a=0;b=0; #5
    a=17;b=2; #5
    a=15;b=4; #5   
    
    $finish;  
    
  end
  
endmodule