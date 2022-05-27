module halfsubstractor (a,b,diff,borr);

input a,b;
output reg diff,borr;

always @ (a,b)
begin
    case ({a,b})
    2'b00: begin
        diff =0;borr=0;
    end
    2'b01: begin
        diff =1;borr=1;
    end
    2'b10: begin
        diff =1;borr=0;
    end
    2'b11: begin
        diff =0;borr=0;
    end
    endcase
    
end

endmodule