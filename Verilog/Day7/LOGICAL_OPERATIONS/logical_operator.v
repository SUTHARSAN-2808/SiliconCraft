module logical_operator(input [1:0]a,
                        input [1:0]b,
                        output reg [1:0]y1,
                        output reg [1:0]y2,
                        output reg [1:0]y3);
                        
  always @(*) begin
    assign y1=a && b;
    assign y2= a || b;
    assign y3=~a;
  end
endmodule

