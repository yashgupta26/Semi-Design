module tb;
  reg [15:0] i;
  reg [3:0] s;
  wire y;
  
  mux16x1 uut (i,s,y);
  
  initial begin
    $monitor("i=%b,s=%0d,y=%0b",i,s,y);
    i=16'b0110101000011101; s=4'b0000; #5
    s=4'b0001; #5
    s=4'b0010; #5
    s=4'b0011; #5
    s=4'b0100; #5
    s=4'b0101; #5
    s=4'b0110; #5
    s=4'b0111; #5
    s=4'b1000; #5
    s=4'b1001; #5
    s=4'b1010; #5
    s=4'b1011; #5
    s=4'b1100; #5
    s=4'b1101; #5
    s=4'b1110; #5
    s=4'b1111; #5
    $finish;    
  end
  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
  end  
endmodule