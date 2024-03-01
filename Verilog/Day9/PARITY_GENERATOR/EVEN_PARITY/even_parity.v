module even_parity_generator(input a,
                       input b,
                        input c,
                       output z);
  assign z=a ^ b ^ c;
endmodule
