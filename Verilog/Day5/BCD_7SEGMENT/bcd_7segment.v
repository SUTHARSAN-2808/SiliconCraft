module bcd_7segment(input a,
                    input b,
                    input c,
                    input d,
                    output A,
                    output B,
                    output C,
                    output D,
                    output E,
                    output F,
                    output G);
  assign A=((~b & ~d) | c | (b & d) | a);
  assign B=((~b) | (~c & ~d) | (c & d));
  assign C= (~c | d | b);
  assign D=((~b & ~d) | (~b & c) | (b & ~c & d) | (c & ~d) | a);
  assign E=((~b & ~d) | (c & ~d));
  assign F=((~c & ~d) | (b & ~c) | (b & ~d) | a);
  assign G=((~b & c) | (b & ~c) | a | (b & ~d));
endmodule
                    
