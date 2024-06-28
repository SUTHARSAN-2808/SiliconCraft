`include "testbench.sv"
   module top();
   
   
     count_if inf();
  
   
    up_counter u1(.clk(inf.clk), .reset(inf.reset), .counter(inf.counter));
 
   
    upcounter_testbench u2(inf);
 
    endmodule:top
