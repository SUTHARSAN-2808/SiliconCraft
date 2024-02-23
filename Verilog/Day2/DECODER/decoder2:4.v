module decoder(input a,
              input b,
              output y0,
              output y1,
              output y2,
               output y3);
wire aa,bb;
  not not1(aa,a);
  not not2(bb,b);
  and and1(y0,aa,bb);
  and and2(y1,aa,b);
  and and3(y2,a,bb);
  and and4(y3,a,b);
endmodule
