module excess3_bcd(input w,               
                   input x,
                   input y,
                   input z,
                   output a,
                   output b,
                   output c,
                   output d);
  assign a=(w & x);
  assign b=((~x & ~y) | (x & y & z) | (~x & ~z));
  assign c=((~y & z) | (y  & ~z));
  assign d=(~z);
endmodule
  

