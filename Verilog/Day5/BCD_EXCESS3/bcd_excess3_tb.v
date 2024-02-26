module bcd_excess_3;
  reg a,b,c,d;
  wire w,x,y,z;
//instantiating the design with test bench
  bcd_excess3 h(.a(a),.b(b),.c(c),.d(d),.w(w),.x(x),.y(y),.z(z));
//dumping the values
  initial begin
    $dumpfile("bcd_excess3.vcd");
    $dumpvars(1,bcd_excess_3);
  end
//Entering the values
  initial begin   
     a=1; b=0; c=1; d=0;#5  
    $display("time=%d a=%d b=%d c=%d d=%d w=%d x=%d y=%d z=%d",$time,a,b,c,d,w,x,y,z);
   
  end
endmodule
