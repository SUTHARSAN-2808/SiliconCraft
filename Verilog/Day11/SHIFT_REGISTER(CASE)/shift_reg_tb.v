module shift_reg_tb;
  reg clk,reset,din;
  reg [1:0] s;
  reg [3:0] d;
  wire [3:0]q;
  shift_reg aa(.clk(clk),.reset(reset),.din(din),.s(s),.d(d),.q(q));
  
  
  initial begin
    clk=1;
     reset=0;
      s=0;
     din=1;
    d=1101;
     #40 $finish;
  end
   
    always #10 clk = ~clk;  
    always #10 reset = ~reset; 
endmodule
