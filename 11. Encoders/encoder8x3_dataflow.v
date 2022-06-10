module encoder8x3(in,out);

    input [7:0] in;
    output [2:0] out;

  assign out[0]=
~in[7]&~in[6]&~in[5]&~in[4]&~in[3]&~in[2]&in[1]&~in[0] | ~in[7]&~in[6]&~in[5]&~in[4]&in[3]&~in[2]&~in[1]&~in[0] | ~in[7]&~in[6]&in[5]&~in[4]&~in[3]&~in[2]&~in[1]&~in[0] | in[7]&~in[6]&~in[5]&~in[4]&~in[3]&~in[2]&~in[1]&~in[0] ;
  
  assign out[1]=
~in[7]&~in[6]&~in[5]&~in[4]&~in[3]&in[2]&~in[1]&~in[0] | ~in[7]&~in[6]&~in[5]&~in[4]&in[3]&~in[2]&~in[1]&~in[0] | ~in[7]&in[6]&~in[5]&~in[4]&~in[3]&~in[2]&~in[1]&~in[0] | in[7]&~in[6]&~in[5]&~in[4]&~in[3]&~in[2]&~in[1]&~in[0] ;
  
  assign out[2]= 
~in[7]&~in[6]&~in[5]&in[4]&~in[3]&~in[2]&~in[1]&~in[0] | ~in[7]&~in[6]&in[5]&~in[4]&~in[3]&~in[2]&~in[1]&~in[0] | ~in[7]&in[6]&~in[5]&~in[4]&~in[3]&~in[2]&~in[1]&~in[0] | in[7]&~in[6]&~in[5]&~in[4]&~in[3]&~in[2]&~in[1]&~in[0] ;
endmodule