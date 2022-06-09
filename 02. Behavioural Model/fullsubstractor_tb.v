module tb ;

reg a,b,c;
wire diff,borr;

fullsubs uut (a,b,c,diff,borr);

initial begin
    $monitor("t=%0t     a=%0b,b=%0b,c=%0b,diff=%0b,borr=%0b",$time,a,b,c,diff,borr);
    a=0;b=0;c=0; #10
    a=0;b=0;c=1; #10
    a=0;b=1;c=0; #10
    a=0;b=1;c=1; #10
    a=1;b=0;c=0; #10
    a=1;b=0;c=1; #10
    a=1;b=1;c=0; #10
    a=1;b=1;c=1; #10
    $finish;
end

initial begin
    $dumpfile("fullsubs.vcd");
    $dumpvars;
end
    
endmodule