module bidirectional_shiftreg_tb;
  reg clk,reset;
  reg [3:0] d;
  reg [1:0]s;
  wire [3:0] q;
  bidirectional_shiftreg dd(.clk(clk),.reset(reset),.d(d),.s(s),.q(q));
  initial begin
    $dumpfile("bidirectional_shiftreg.vcd");
    $dumpvars(1);
  end
  initial begin
    clk=1;
    reset=0;
    s=1;
    #5 d=0100; 
     $display("d=%b q=%b",q,d);
     #40 $finish;
  end
 
    always #5 clk=~clk;
    always #5 s=~s;
    always #10 reset=~reset;
  
endmodule
    
