module full_adder(input a,
                 input b,
                 input cin,
                 output wire sum,
                  output wire cout);
  assign sum=a^b^cin;
  assign cout=(a&b || b&cin || a&cin);
  
endmodule
               
