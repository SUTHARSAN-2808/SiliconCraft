module relational_operator(input [3:0]a,
                                  input [3:0]b,
                                  output reg y1,
                                  output reg y2,
                                  output reg y3);
                        
  always @(*) begin
    assign y1=a >= b;
    assign y2= a <= b;
    assign y3=a>b;
  end
endmodule

