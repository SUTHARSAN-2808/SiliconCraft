
module gray_bin_tb;
  
  reg g3,g2,g1,g0;
  wire b3,b2,b1,b0;
//instantiate both design with testbench
  gray_bin bg(.g3(g3),.g2(g2),.g1(g1),.g0(g0),.b3(b3),.b2(b2),.b1(b1),.b0(b0));
//duming the values of design into testbench
  initial begin
    $dumpfile("gray_bin.vcd");
    $dumpvars(1,gray_bin_tb);
  end
//Entering the values
  initial begin
    $monitor("time=%d g3=%d  g2=%d  g1=%d  g0=%d  b3=%d  b2=%d  b1=%d  b0=%d ",$time,g3,g2,g1,g0,b3,b2,b1,b0);
    g3=1;g2=0;g1=1;g0=1;#10
     g3=0;g2=0;g1=1;g0=1;#10
    $finish;
  end
endmodule
