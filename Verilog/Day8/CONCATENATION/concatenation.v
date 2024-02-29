module concatenation(input [3:0]a,
                     input [3:0]b,
                     output reg[50:0]y1,
                     output reg[50:0]y2,
                     output reg[50:0]y3
                    );
  always @(*)begin
    y1={a,b};
    y2={4{a}};
    y3={4{a,b}};
  end
endmodule

