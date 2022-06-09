module tb;

reg a,b;
wire sum,cout;

half_adder uut (a,b,sum,cout);

initial begin
    $monitor("t=%0t     a=%0b,b=%0b,sum=%0b,cout=%0b",$time,a,b,sum,cout);
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
    $dumpfile("halfadder.vcd");
    $dumpvars;
end

endmodule