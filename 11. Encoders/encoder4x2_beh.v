module encoder4x2 (in,out);
  
  input [3:0] in;
  output reg [1:0] out;
  
  always@(in)
    case(in)
      4'b0001:begin out=2'b00; end
      4'b0010:begin out=2'b01; end
      4'b0100:begin out=2'b10; end
      4'b1000:begin out=2'b11; end
    endcase
  
endmodule