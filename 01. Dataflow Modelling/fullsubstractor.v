module fullsubstractor (a,b,c,diff,borr);

    input a,b,c;
    output diff,borr;

    assign diff = a^b^c;
    assign borr = ~a&c | ~a&b | b&c;
    
endmodule