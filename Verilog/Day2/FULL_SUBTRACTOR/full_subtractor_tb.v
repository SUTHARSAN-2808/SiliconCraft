
module full_subtractor_tb;
  reg a,b,c;
  wire diff,bor;
//instantiating both design and testbench
  full_sub fa_s1(.a(a),.b(b),.c(c),.diff(diff),.bor(bor));
//dumping the values into the testbench
  initial begin
    $dumpfile("full_sub.vcd");
    $dumpvars(1,full_subtractor_tb);
  end
//entering the values
  initial begin
    a=0;b=0;c=0;#4
    $display("dtime=%t a=%d b=%d c=%d diff=%d bor=%d",$time,a,b,c,diff,bor);
    a=0;b=0;c=1;#4
    $display("dtime=%t a=%d b=%d c=%d diff=%d bor=%d",$time,a,b,c,diff,bor);
    a=0;b=1;c=1;#4
    $display("dtime=%t a=%d b=%d c=%d diff=%d bor=%d",$time,a,b,c,diff,bor);
    a=1;b=0;c=0;#4
    $monitor("dtime=%t a=%d b=%d c=%d diff=%d bor=%d",$time,a,b,c,diff,bor);
    $display("dtime=%t a=%d b=%d c=%d diff=%d bor=%d",$time,a,b,c,diff,bor);
    $finish;
  end
endmodule
