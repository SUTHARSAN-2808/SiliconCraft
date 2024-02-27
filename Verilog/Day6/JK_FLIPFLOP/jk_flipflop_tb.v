module jk_flipflop_tb;
  reg j,k,clk,reset;
  wire q,qbar;
//instantiate the design with testbench
  jk_flipflop jk(.j(j),.k(k),.clk(clk),.reset(reset),.q(q),.qbar(qbar));
//Dumping the values of design with testbench
  initial begin
    $dumpfile("jk_flipflop.vcd");
    $dumpvars(1,jk_flipflop_tb);
  end
//Entering the values
  initial begin
    j=1;
    k=0;
    reset=0;
    #6 clk=1;
    #50 $finish;
  end
  always #3 j=~j;
  always #4 k=~k;
  always #2 clk=~clk;
  always #8 reset=~reset;
  initial begin
    $monitor("j=%d k=%d clk=%d reset=%d q=%d qbar=%d",j,k,clk,reset,q,qbar);
  end 
endmodule
    
    
