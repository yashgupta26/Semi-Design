module fulladder(a,b,c,sum,cout);

    input a,b,c;
    output sum,cout;
  	assign {cout,sum} = a+b+c;
    

endmodule