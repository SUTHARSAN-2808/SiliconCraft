
module gray_bin(input g3,
                input g2,
                input g1,
                input g0,
                output b3,
                output b2,
                output b1,
                output b0);
  buf buf1(b3,g3);
  xor xor1(b2,b3,g2);
  xor xor2(b1,b2,g1);
  xor xor3(b0,b1,g0);
endmodule
