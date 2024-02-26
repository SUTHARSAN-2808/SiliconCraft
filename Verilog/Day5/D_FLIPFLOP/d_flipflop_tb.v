module d_flipflop_tb;
  reg d,clk,reset;
  wire q;
//instantiating the design with testbench
  d_flipflop g(.d(d),.clk(clk),.reset(reset),.q(q));
//dumping the values
  initial begin
    $dumpfile("d_flipflop.vcd");
    $dumpvars(1,d_flipflop_tb);
  end
//entering the values 
  initial begin
    $monitor("d=%d clk=%d reset=%d q=%d", d,clk,reset,q);
    d=0;
    clk=1;
    #5 reset=1;
    #200 $finish;
  end
    always #20 d=~d;
    always #15 clk=~clk;
    always #10 reset=~reset;
  
  
endmodule
    

