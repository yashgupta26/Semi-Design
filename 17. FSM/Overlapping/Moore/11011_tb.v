module cd_11011_tb();
  reg clk,rst,signal;
  wire out;
  
  cd_11011 UUT(clk,signal,out,rst);
  
  //always #5 clk=~clk;
  initial begin
    clk=0;
    rst=0;
    forever #5 clk=~clk; //Loop to generate clock
  end
  
  initial begin
    $monitor("time = %0t,clk=%0b,signal=%0b,rst=%0b,out=%0b",$time,clk,signal,rst,out);
    #20
    rst=1;
    signal=1; #10
    signal=1; #10
    signal=0; #10
    signal=1; #10
    signal=1; #10
    signal=0; #10
    signal=1; #10
    signal=1; #20
    $finish;
    end
  	
  	initial begin
      $dumpfile("wave.vcd");
      $dumpvars;
    end
  
endmodule