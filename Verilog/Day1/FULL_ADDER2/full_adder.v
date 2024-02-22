module full_adder(input a,
                  input b,
                  input cin,
                  output sum,
                  output cout);
  
  wire x,y,z;
  halfadder ha1(.a(a),.b(b),.s(x),.c(y));
  halfadder ha2(.a(x),.b(cin),.s(sum),.c(z));
  or or1(cout,z,y);
  endmodule

    module halfadder(input a,
                      input b,
                      output s,
                      output c);
      xor xor1(s,a,b);
      and and1(c,a,b);
    endmodule
