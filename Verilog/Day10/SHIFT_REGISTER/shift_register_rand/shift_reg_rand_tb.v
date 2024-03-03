module shiftreg_rand_tb;
  reg clk,reset;
  reg [3:0] d;
  wire [3:0] q;
  shiftreg_rand dd(clk,reset,d,q);
  initial begin
    $dumpfile("shiftreg_rand.vcd");
    $dumpvars(1);
  end
  initial begin
    clk=1;
    reset=0;
    d=$random; 
     #40 $finish;
  end
 
    always #5 clk=~clk;
    always #10 reset=~reset;
  
endmodule
    
