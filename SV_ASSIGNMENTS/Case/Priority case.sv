//priority case
module pcase;
  bit [1:0]a;
  initial begin
    priority case(a)
      2'b00:$display("5");
      2'b01:$display("7");
      2'b00:$display("6");
      2'b11:$display("9");
      
      
    endcase
  end
endmodule
