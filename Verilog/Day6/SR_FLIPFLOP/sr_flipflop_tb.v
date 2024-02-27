module sr_flipflop_tb;
  reg s,r,clk;
  wire q,qbar;
//instantiating the design with testbench
  sr_flipflop srff(.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));
//Dumping the values of design with testbench
  initial begin
    $dumpfile("sr_flipflop.vcd");
    $dumpvars(1,sr_flipflop_tb);
  end
//Entering the values
  initial begin
    s=0;r=1; #2 clk=1;
   
    #350 $finish;
  end
  always #10 s=~s;
   always #15 clk=~clk;
  
  always #50 r=~r;
  initial begin
    $monitor("s=%d r=%d clk=%d  q=%d", s,r,clk,q);
  end
endmodule
  
  
    
  
    
