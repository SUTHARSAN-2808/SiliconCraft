module shifting_operators(input [3:0]a,
                          input [3:0]b,
                          output reg[3:0]y1,
                          output reg[3:0]y2,
                          output reg[3:0]y3,
                          output reg[3:0]y4);
  always@(*)begin
    y1=a<<1;
    y2=a>>1;
    y3=b<<2;
    y4=b >> 2;
  end
endmodule

