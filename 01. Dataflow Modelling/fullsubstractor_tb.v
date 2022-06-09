module fullsubstractor_tb;

    reg a,b,c;
    wire diff,borr;

    fullsubstractor uut(a,b,c,diff,borr);

    initial 
    begin
        $monitor("a=%0b,b=%0b,c=%0b,diff=%0b,borr=%0b",a,b,c,diff,borr);
        a=0;b=0;c=0;
        #5
        a=0;b=0;c=1;
        #5
        a=0;b=1;c=0;
        #5
        a=0;b=1;c=1;
        #5
        a=1;b=0;c=0;
        #5
        a=1;b=0;c=1;
        #5
        a=1;b=1;c=0;
        #5
        a=1;b=1;c=1;
        #65  $finish;   
    end

    initial
    begin
        $dumpfile("fullsubstractor.vcd");
        $dumpvars;
    end

endmodule