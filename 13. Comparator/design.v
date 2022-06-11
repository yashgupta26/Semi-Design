module comparator(a,b,gt,eq,lt);
  
  input [3:0] a,b;
  output reg gt,eq,lt;
  
  always@(a,b)
    if(a>b)
      begin
        gt=1;
        eq=0;
        lt=0;
      end
  	else if(a==b)
      begin
        gt=0;
        eq=1;
        lt=0;
      end
  	else if(a<b)
      begin
        gt=0;
        eq=0;
        lt=1;
      end
  
endmodule