module fullsubs(a,b,c,diff,borr);

    input a,b,c;
    output reg diff,borr;

    always @(a,b,c) begin
        case ({a,b,c})
            3'b000:begin
                diff=0;borr=0;
            end
            3'b001:begin
                diff=1;borr=1;
            end
            3'b010:begin
                diff=1;borr=1;
            end
            3'b011:begin
                diff=0;borr=1;
            end     
            3'b100:begin
                diff=1;borr=0;
            end
            3'b101:begin
                diff=0;borr=0;
            end
            3'b110:begin
                diff=0;borr=0;
            end
            3'b111:begin
                diff=1;borr=1;
            end        
        endcase
    end

endmodule