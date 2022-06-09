module mux_tb;
  
  reg [1:0]i;//i1,i0
  reg s;
  wire y;
  
  //intantiation
  mux2x1 uut(i,s,y);

  initial
    begin
      $monitor("i=%b,s=%0b,y=%0b",i,s,y);
      
      i=2'b01;//i1=0;i0=1;
      
      s=0;
      
      #5
      
      s=1;
      
      #50 $finish;
      
      
    end
  
  initial
    begin
      
      $dumpfile("mux.vcd");
      $dumpvars;
      
    end
  
endmodule
