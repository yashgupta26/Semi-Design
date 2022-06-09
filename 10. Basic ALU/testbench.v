module tb;
  
  reg [3:0] a;
  reg [3:0] b;
  reg [2:0] sel;
  wire [3:0] y;
  
  ALU dut (a,b,sel,y);
  
  initial begin
    
    
    
    $monitor("A=%d,B=%d,Sel=%b,Y=%d",a,b,sel,y); //for Arithmetic
	a=4'd3;b=4'd2;
    sel=3'b000;
    #5;
    sel=3'b001;
    #5;
    sel=3'b010;
    #5;
    sel=3'b011;
    #5;
    
// $monitor("A=%b,B=%b,Sel=%b,Y=%b",a,b,sel,y); //for Logical    
//     a=4'b0110; b=4'b1000;     
//     sel=3'b100;
//     #5;
//     sel=3'b101;
//     #5;
//     sel=3'b110;
//     #5;
//     sel=3'b111;
//     #5;
    
    $finish;
  end
  
endmodule