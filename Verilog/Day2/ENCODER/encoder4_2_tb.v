module encoder_tb;
  reg a,b,c,d;
  wire y,z;
//instantiate design with the testbench
  encoder encoder1(.a(a),.b(b),.c(c),.d(d),.y(y),.z(z));
//dumping 
  initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(1,encoder_tb);
  end
//entering the values
  initial begin
    $monitor("a=%d b=%d c=%d d=%d y=%d z=%d",a,b,c,d,y,z);
    a=0;b=0;c=0;d=1;#2
    a=0;b=0;c=1;d=0;#2
    a=0;b=1;c=0;d=0;#2
    a=1;b=0;c=0;d=0;#2
    $finish;
  end 
endmodule

