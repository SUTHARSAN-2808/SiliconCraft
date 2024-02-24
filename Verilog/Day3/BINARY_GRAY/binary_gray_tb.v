
module bin_gray_tb;
  reg a,b,c,d;
  wire g1,g2,g3,g4;
//instantiate design with test bench
  bin_gray bg(.a(a),.b(b),.c(c),.d(d),.g1(g1),.g2(g2),.g3(g3),.g4(g4));
//dumping the values of desing into testbench
  initial begin
    $dumpfile("bin_gray.vcd");
    $dumpvars(1,bin_gray_tb);
  end
//entering the input values
  initial begin
    $monitor("mtime=%d a=%d b=%d c=%d d=%d g1=%d g2=%d g3=%d g4=%d",$time,a,b,c,d,g1,g2,g3,g4);
     a=1;b=1;c=0;d=1;#10
      a=0;b=1;c=0;d=1; 
    $display("mtime=%d a=%d b=%d c=%d d=%d g1=%d g2=%d g3=%d g4=%d",$time,a,b,c,d,g1,g2,g3,g4);
    $finish;
  end
endmodule
