module demux1_4(input x,
                input s1,
                input s0,
                output d0,
                 output d1,
                 output d2,
                 output d3
               );
  wire s11,s00;
  not not1(s11,s1);
  not not2(s00,s0);
  and and1(d0,s11,s00,x);
  and and2(d1,s11,s0,x);
  and and3(d2,s1,s00,x);
  and and4(d3,s1,s0,x);
endmodule

