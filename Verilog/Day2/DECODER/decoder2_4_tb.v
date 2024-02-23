
module decoder_tb;
  reg a,b;
  wire y0,y1,y2,y3;
//instantiate design with the testbench
  decoder decoder1(.a(a),.b(b),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
//dumping 
  initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(1,decoder_tb);
  end
//entering the values
  initial begin
    $monitor("a=%d b=%d y0=%d y1=%d y2=%d y3=%d",a,b,y0,y1,y2,y3);
    a=0;b=0;#2
    a=0;b=1;#2
    a=1;b=0;#2
    a=1;b=1;#2
    $finish;
  end 
endmodule
