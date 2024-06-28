`include "interface.sv"
module upcounter_testbench(count_if inf);
     initial begin
     $display("\n // Parameterised interface example");
    
     $monitor("\ncount=%0d",inf.counter);
     inf.clk=0;
     forever #5 inf.clk=~inf.clk;
     end
     initial begin
     inf.reset=1;
     #20;
     inf.reset=0;
     #70 $finish;
     end
  endmodule
