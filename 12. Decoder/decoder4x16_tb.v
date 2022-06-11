module tb;
  
  reg [3:0] w;
  reg e;
  wire [0:15] y;
  
  decoder16x4 dut (w,e,y);
  
  initial begin
    $monitor("e=%0b,w=%b,y=%b",e,w,y);
    e=0; w=4'b1001; #5
    e=0; w=4'b1010; #5
    e=1; w=4'b1011;#5
    w=4'b0001;#5
    w=4'b1010;#5
    w=4'b0011;#5
    w=4'b1000;#5
   $finish;  
  end 
  
endmodule