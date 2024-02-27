module t_flipflop_tb;
  reg d,clk,reset;
  wire q;
//instantiate
  t_flipflop tff(.d(d),.clk(clk),.reset(reset),.q(q));
//dumping the values
  initial begin
    $dumpfile("t_flipflop.vcd");
    $dumpvars(1,t_flipflop_tb);
  end
//Entering the values
  initial begin
    $monitor("d=%d clk=%d reset=%d q=%d",d,clk,reset,q);
    d=0;
    clk=1;
    #4 reset=1;
    #400 $finish;
  end
  always #15 d=~d;
  always #10 clk=~clk;
  always #50 reset=~reset;
endmodule
           
