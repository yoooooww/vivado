module Full_Adder(a,b,c_in,sum,c_out);
input a;
input b;
input c_in;
output sum;
output c_out;
assign sum=a^b^c_in;
assign c_out= a&b | {(a^b)&c_in};
endmodule