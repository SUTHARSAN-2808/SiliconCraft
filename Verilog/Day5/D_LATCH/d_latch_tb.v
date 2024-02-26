module d_latch_tb;
  reg data,en,reset;
  wire q;
//instantiate 
  d_latch(.data(data),.en(en),.reset(reset),.q(q));
//dumping
  initial begin
    $dumpfile("d_latch.vcd");
    $dumpvars(1,d_latch_tb);
  end
//Entering the values
  initial begin
    $monitor("data=%d en=%d reset=%d q=%d ",data,en,reset,q);
    data=1;
    en=0;
    #6 reset=1;
  #150 $finish;
  end
  always #25 reset=~reset;
  always #20 en=~en;
  always #15 data=~data;
endmodule
