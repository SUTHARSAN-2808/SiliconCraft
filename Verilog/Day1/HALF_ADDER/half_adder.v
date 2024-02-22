module half_adder(input a,
                  input b,
                  output sum,
                  output carry);
  xor sum1(sum,a,b);
  and carry1(carry,a,b);
endmodule
