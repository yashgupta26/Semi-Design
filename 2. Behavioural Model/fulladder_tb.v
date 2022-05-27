module tb ;

reg a,b,c;
wire sum,cout;

fulladder uut (a,b,c,sum,cout);

initial begin
    $monitor("t=%0t     a=%0b,b=%0b,c=%0b,sum=%0b,cout=%0b",$time,a,b,c,sum,cout);
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
    $dumpfile("fulladder.vcd");
    $dumpvars;
end
    
endmodule