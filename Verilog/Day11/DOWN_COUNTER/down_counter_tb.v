module Downcounter_tb;
  reg clk,reset;
  wire [3:0] count;
  Downcounter aa(.clk(clk),
               .reset(reset),
               .count(count));
  
  always #5 clk=~clk;
   initial begin
    clk=0;
    reset=1;
   #10
     reset = 0;
     #250
     $finish;
   end
    
endmodule
  
  
