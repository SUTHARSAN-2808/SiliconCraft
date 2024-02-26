module bcd_7segment_tb;
  reg a,b,c,d;
  wire A,B,C,D,E,F,G;
//instantiate
  bcd_7segment h(.a(a),.b(b),.c(c),.d(d),.A(A),.B(B),.C(C),.D(D),.E(E),.F(F),.G(G));
//dumping
  initial begin
    $dumpfile("bcd_7segment.vcd");
    $dumpvars(1,bcd_7segment_tb);
  end
//Entering the values
  initial begin
    a=0;b=1;c=1;d=0;#4
    $display("a=%d b=%d  c=%d  d=%d  A=%d  B=%d  C=%d  D=%d E=%d F=%d G=%d ",a,b,c,d,A,B,C,D,E,F,G);
    $finish;
  end
 
endmodule
    
