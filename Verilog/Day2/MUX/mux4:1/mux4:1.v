module mux(input a,
           input b,
           input c,
           input d,
           input s1,
           input s0,
           output y);
  wire s11,s00,a1,b1,c1,d1;
  not not1(s11,s1);
  not not2(s00,s0);
  and and1(a1,s11,s00,a);
  and and2(b1,s11,s0,b);
  and and3(c1,s1,s00,c);
  and and4(d1,s1,s0,d);
  or or1(y,a1,b1,c1,d1);
endmodule
