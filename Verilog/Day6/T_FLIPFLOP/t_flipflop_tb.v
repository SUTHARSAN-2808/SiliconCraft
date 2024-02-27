module t_flipflop_tb;
  reg d,clk,reset;
  wire q,qbar;
//instantiate
  t_flipflop tff(.d(d),.clk(clk),.reset(reset),.q(q),.qbar(qbar));
//dumping the values
  initial begin
    $dumpfile("t_flipflop.vcd");
    $dumpvars(1,t_flipflop_tb);
  end
//Entering the values
  initial begin
    $monitor("d=%d clk=%d reset=%d q=%d qbar=%d",d,clk,reset,q,qbar);
    d=0;
    clk=1;
    #4 reset=1;
    #40 $finish;
  end
  always #5 d=~d;
  always #2 clk=~clk;
  always #6 reset=~reset;
endmodule
           
