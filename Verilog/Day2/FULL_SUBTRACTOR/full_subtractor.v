module full_sub(input a,
                input b,
                input c,
                output diff,
                output bor);
  wire u,v,w;
  half_sub ha_s1(.m(a),.n(b),.d1(u),.b1(v));
  half_sub ha_s2(.m(u),.n(c),.d1(diff),.b1(w));
  or or2(bor,v,w);
endmodule
module half_sub(input m,
                input n,
                output d1,
                output b1);
  wire w1;
  xor xor1(d1,m,n);
  not not1(w1,m);
  and and1(b1,w1,n);
endmodule
  
  
