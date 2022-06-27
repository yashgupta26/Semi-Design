module cd_1001_tb();
  reg clk,rst,signal;
  wire out;
  
  cd_1001 UUT(clk,signal,out,rst);
  
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
    signal=0; #10
    signal=1; #10
    signal=0; #10
    signal=0; #10
    signal=1; #10
    
    repeat(10)
      begin
        #10
        signal=$random; //random number generator
      end
    #100
    $finish;
    end
  	
  	initial begin
      $dumpfile("wave.vcd");
      $dumpvars;
    end
  
endmodule