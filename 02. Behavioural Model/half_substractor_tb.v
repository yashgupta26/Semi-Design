module tb;

reg a,b;
wire diff,borr;

halfsubstractor uut (a,b,diff,borr);

initial begin
    $monitor("t=%0t     a=%0b,b=%0b,sum=%0b,carry=%0b",$time,a,b,diff,borr);
    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    #10 $finish;
end

initial begin
    $dumpfile("halfsubstractor.vcd");
    $dumpvars;
 end

endmodule