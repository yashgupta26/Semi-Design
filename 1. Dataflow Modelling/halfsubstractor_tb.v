module halfsubstractor_tb;

    reg a,b;
    wire diff,borr;

    halfsubstractor uut(a,b,diff,borr);

    initial
    begin
        $monitor("a=%0b,b=%0b,diff=%0b,borr=%0b",a,b,diff,borr);
        a=0;b=0;
        #5
        a=0;b=1;
        #5
        a=1;b=0;
        #5
        a=1;b=1;

        #35 $finish;

    end

    initial
    begin
        $dumpfile("halfsubstractor.vcd");
        $dumpvars;
    end


endmodule