module clk_generator(output reg clk);
  initial begin
    clk=0;
    #2
    clk=1;
    #4
    clk=0;
  
    #20 $finish;
  end
  always @(*) begin
    $display(clk);
  end
endmodule
