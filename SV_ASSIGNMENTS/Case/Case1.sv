
module case1;
  
  reg [1:0]x;
  initial begin
    x=2'd3;
  case(x)
    
    2'b00:$display("0");
    2'b01:$display("1");
    2'b10:$display("2");
    2'b11:$display("3");
    
  endcase
  end
endmodule
