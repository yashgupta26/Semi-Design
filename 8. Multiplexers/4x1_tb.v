module tb;
  reg [3:0] i;
  reg [1:0] s;
  wire y;
  
  mux4x1 uut (i,s,y);
  
  initial begin
    $monitor("i=%b,s=%0b,y=%0b",i,s,y);
    i=4'b0110; s=2'b00; #5
    s=2'b10; #5
    s=2'b11; #5
    s=2'b01; #5
    $finish;    
  end
  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
  end  
endmodule
