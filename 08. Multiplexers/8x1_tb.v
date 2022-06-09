module tb;
  reg [7:0] i;
  reg [2:0] s;
  wire y;
  
  mux8x1 uut (i,s,y);
  
  initial begin
    $monitor("i=%b,s=%0d,y=%0b",i,s,y);
    i=8'b01101010; s=2'b000; #5
    s=3'b001; #5
    s=3'b010; #5
    s=3'b011; #5
    s=3'b100; #5
    s=3'b101; #5
    s=3'b110; #5
    s=3'b111; #5
    $finish;    
  end
  
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars;
  end  
endmodule
