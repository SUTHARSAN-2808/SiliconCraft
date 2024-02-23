
module demux1_8(input x,
                input s0,
                input s1,
                input s2,
                output y0,
                output y1,
                output y2,
                output y3,
                output y4,
                output y5,
                output y6,
                output y7);
  wire s00,s11,s22;
  not not1(s00,s0);
  not not2(s11,s1);
  not not3(s22,s2);
  and and1(y0,s00,s11,s22,x);
  and and2(y1,s00,s11,s2,x);
  and and3(y2,s00,s1,s22,x);
  and and4(y3,s00,s1,s2,x);
  and and5(y4,s0,s11,s22,x);
  and and6(y5,s0,s11,s2,x);
  and and7(y6,s0,s1,s22,x);
  and and8(y7,s0,s1,s2,x);
endmodule
                
