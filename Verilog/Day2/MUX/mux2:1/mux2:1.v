module mux2_1(input a,
              input b,
              input s,
              output y);
  wire s0,a1,b1;
  not not1(s0,s);
  and and1(a1,a,s0);
  and and2(b1,b,s);
  or or1(y,a1,b1);
endmodule
  
