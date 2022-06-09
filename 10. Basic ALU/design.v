module ALU(a,b,sel,y);
  
  input [3:0]a;
  input [3:0]b;
  input [2:0] sel;
  output reg [3:0]y;
  
  always@(a,b,sel)
  case(sel)
    3'b000: y=a+b;      //Addition
    3'b001: y=a-b;      //Substraction
    3'b010: y=a*b;      //Multiplication
    3'b011: y=a/b;      //Division
    3'b100: y=a&b;      //AND
    3'b101: y=a|b;      //OR
    3'b110: y=a^b;      //XOR
    3'b111: y=~(a&b);   //NAND
  endcase
  
endmodule