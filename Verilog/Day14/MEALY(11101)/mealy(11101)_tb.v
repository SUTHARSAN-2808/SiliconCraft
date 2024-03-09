module mealy_tb;
  reg clk,reset;
  reg in;
  wire [2:0] state,next;
  wire out;
  mealy ab(.clk(clk),.reset(reset),.state(state),.next(next),.in(in),.out(out));
  always #2clk=~clk;
  initial begin
    clk=0;
    reset=1;
    #4 reset=0;
  end
  initial begin
    #5 in=1'b1;
    #5 in=1'b1;
    #5 in=1'b1;
    #5 in=1'b0;
    #5 in=1'b1; 
    #15$finish;
  end
  initial begin
    $monitor("clk=%d reset=%d in=%b state=%b next=%b out=%d",clk,reset,in,state,next,out);
  end
  initial begin
    $dumpfile("mealy.vcd");
    $dumpvars(1);
  end
endmodule
  
    
