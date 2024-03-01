module odd_parity_generator(input a,
                       input b,
                        input c,
                       output z);
wire d;
  xnor xnor1(d,c,b);
  xor xor1(z,a,d);
endmodule
