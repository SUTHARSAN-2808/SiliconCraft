module clk_generator_tb;
  wire clk;
  clk_generator aa(clk);
  initial begin
    $dumpfile("clk_generator.vcd");
    $dumpvars(1);
  end
endmodule
