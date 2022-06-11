module tb;
  
  reg A,B,C,D;
  wire a,b,c,d,e,f,g;
  
  bcd2seven uut (A,B,C,D,a,b,c,d,e,f,g);
  
  initial begin
    $monitor("ABCD=%b%b%b%b , ssd=%b%b%b%b%b%b%b",A,B,C,D,a,b,c,d,e,f,g);
    {A,B,C,D} = 0; #5
    {A,B,C,D} = 1; #5
    {A,B,C,D} = 2; #5
    {A,B,C,D} = 3; #5
    {A,B,C,D} = 4; #5
    {A,B,C,D} = 5; #5
    {A,B,C,D} = 6; #5
    {A,B,C,D} = 7; #5
    {A,B,C,D} = 8; #5
    {A,B,C,D} = 9; #5
    $finish;
  end
endmodule