module encoder(input a,
               input b,
               input c,
               input d,
               output y,
               output z);
  or or1(y,a,b);
  or or2(z,c,a);
endmodule
  
