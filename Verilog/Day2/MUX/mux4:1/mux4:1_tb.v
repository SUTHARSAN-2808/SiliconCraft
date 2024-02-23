module mux_tb;
  reg a,b,c,d,s0,s1;
  wire y;
//instantiate
  mux mux1(.a(a),.b(b),.c(c),.d(d),.y(y),.s0(s0),.s1(s1));
//dumping the values of design into testbench
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1,mux_tb);
  end
//Entering the values
  initial begin
  a=0;b=1;c=0;d=1;s0=0;s1=0;#10
     $display("mtime=%d a=%d b=%d c=%d  d=%d y=%d s0=%d s1=%d",$time,a,b,c,d,s0,s1,y);

  a=0;b=1;c=0;d=1;s0=0;s1=1;#10
     $display("mtime=%d a=%d b=%d c=%d  d=%d y=%d s0=%d s1=%d",$time,a,b,c,d,s0,s1,y);

  a=0;b=1;c=0;d=1;s0=1;s1=0;#10
     $display("mtime=%d a=%d b=%d c=%d  d=%d y=%d s0=%d s1=%d",$time,a,b,c,d,s0,s1,y);

  a=0;b=1;c=0;d=1;s0=1;s1=1;#10
  
     $display("mtime=%d a=%d b=%d c=%d  d=%d y=%d s0=%d s1=%d",$time,a,b,c,d,s0,s1,y);

   $finish;

  end
endmodule

