module demux4_1_tb;
  reg x,s1,s0;
  wire d0,d1,d2,d3;
//instantiate design with testbench
  demux1_4 demux(.x(x),.s1(s1),.s0(s0),.d0(d0),.d1(d1),.d2(d2),.d3(d3));
//dumping
  initial begin
    $dumpfile("demux1_4.vcd");
    $dumpvars(1,demux4_1_tb);
  end
//entering the values
  initial begin
    x=1;s1=0;s0=0;#3
    $display("time %d x=%d s1=%d s0=%d d0=%d d1=%d d2=%d d3=%d",$time,x,s1,s0,d0,d1,d2,d3 );
    x=1;s1=0;s0=1;#3
      $display("time %d x=%d s1=%d s0=%d d0=%d d1=%d d2=%d d3=%d",$time,x,s1,s0,d0,d1,d2,d3 );
    x=1;s1=1;s0=0;#3
       $display("time %d x=%d s1=%d s0=%d d0=%d d1=%d d2=%d d3=%d",$time,x,s1,s0,d0,d1,d2,d3 );
    x=1;s1=1;s0=1;#3
      $display("time %d x=%d s1=%d s0=%d d0=%d d1=%d d2=%d d3=%d",$time,x,s1,s0,d0,d1,d2,d3 );
    $finish;
  end
endmodule
