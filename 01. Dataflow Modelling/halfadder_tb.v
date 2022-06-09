module halfadder_tb;

    reg a,b;
    wire cout,sum;

    halfadder uut(a,b,sum,cout);

    initial
    begin
        $monitor("a=%0b,b=%0b,sum=%0b,cout=%0b",a,b,sum,cout);
        a=0;b=0;
        #5
        a=0;b=1;
        #5
        a=1;b=0;
        #5
        a=1;b=1;
        #35
        $finish ;
    end

    initial
    begin
        $dumpfile("halfadder.vcd");
        $dumpvars;
    end

endmodule