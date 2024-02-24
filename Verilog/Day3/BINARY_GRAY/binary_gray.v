module bin_gray(input a,
                input b,
                input c,
                input d,
                output g1,
                output g2,
                output g3,
                output g4);
  xor xor1(g4,c,d);
  xor xor2(g3,b,c);
  xor xor3(g2,a,b);
  buf buf1(g1,a);
endmodule
