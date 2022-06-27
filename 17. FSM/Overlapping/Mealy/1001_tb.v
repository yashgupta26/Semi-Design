module tb;

reg clk,rst,signal;
wire out;

seq1001 DUT(clk,rst,signal,out);

initial begin
    clk=0;
    rst=0;
    forever begin
        #5 clk=~clk;
    end
end

initial begin
    $monitor("Time =  %0t,clk=%0b,signal=%0b,rst=%0b,out=%0b",$time,clk,signal,rst,out);
    #20
    rst=1;
    signal = 1; #10
    signal=1; #10
    signal=0; #10
    signal=0; #10
    signal=1; #10
  signal=0; #10
    signal=0; #10
    signal=1; #30
    
//     repeat(10)
//       begin
//         #10
//         signal=$random; 
//       end
//     #100
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
end


endmodule