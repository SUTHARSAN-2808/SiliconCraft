
module excess_bcd_tb;
  reg w,x,y,z;
  wire a,b,c,d;
//instantiating
  excess3_bcd bc(.w(w),.x(x),.y(y),.z(z),.a(a),.b(b),.c(c),.d(d));
//dumping
  initial begin
    $dumpfile("excess3_bcd.vcd");
    $dumpvars(1,excess_bcd_tb);
  end
//Entering values
  initial begin
    w=0;x=1;y=1;z=0;#4
    $display("time=%d w=%d x=%d y=%d z=%d a=%d b=%d c=%d xd=%d",$time,w,x,y,z,a,b,c,d);
    $finish;
  end
endmodule
