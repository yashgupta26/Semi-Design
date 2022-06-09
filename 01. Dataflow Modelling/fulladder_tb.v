module tb;
  
  //direction of ports
  reg a,b,c;
  wire sum,cout;
  
  //instantiation
  full_adder uut(a,b,c,sum,cout);//order mapping
  
  initial
    begin
      $monitor("a=%0b,b=%0b,c=%0b,sum=%0b,cout=%0b",a,b,c,sum,cout);
      
       a=0;b=0;c=0;
        #5
       a=0;b=0;c=1;
        #5
       a=0;b=1;c=0;
        #5
       a=0;b=1;c=1;
        #5
       a=1;b=0;c=0;
        #5
       a=1;b=0;c=1;
        #5
       a=1;b=1;c=0;
        #5
       a=1;b=1;c=1;
      
      #100 $finish;
    end
  
  initial
    begin
      $dumpfile("fulladder.vcd");
      $dumpvars;
      
    end
endmodule