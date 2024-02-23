module mux2_1_tb;
  reg a,b,s;
  wire y;
//instantiate design with testbench
  mux2_1 mux(.a(a),.b(b),.s(s),.y(y));
//dumping the values
  initial begin
    $dumpfile("mux2_1.vcd");
    $dumpvars(1,mux2_1_tb);
  end
//enter the values
  initial begin
    a=0;b=1;s=0;#9
    $display("time=%d a=%d b=%d s=%d y=%d",$time,a,b,s,y);
    a=0;b=1;s=1;#9
    $display("time=%d a=%d b=%d s=%d y=%d",$time,a,b,s,y);
  end
endmodule
