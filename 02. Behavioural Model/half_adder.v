module half_adder (a,b,sum,cout);

    input a,b;
    output reg sum,cout;

    always @(a,b) 
    begin
        case ({a,b})
            2'b00: begin 
                sum=0;cout=0;
            end
            2'b01: begin 
                sum=1;cout=0;
            end 
            2'b10: begin 
                sum=1;cout=0;
            end 
            2'b11: begin 
                sum=0;cout=1;
            end   
        endcase
    end

endmodule