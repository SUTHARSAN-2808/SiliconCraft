module UpDowncounter_tb;
  reg clk,reset;
  reg [1:0]s;
  wire [3:0] count;
  UpDowncounter aa(.clk(clk),
                   .s(s),
               .reset(reset),
               .count(count));
  
  always #5 clk=~clk;
   initial begin
    clk=0;
    reset=1;
     
   #10
     reset = 0;
     s=0;
     #5 s=1;
     #5 s=0;
     #250
     $finish;
   end
    
endmodule
