module universal_shiftreg_tb;
  reg clk,reset;
  reg [3:0] d;
  reg [1:0]s;
  wire [3:0]q;
  universal_shiftreg aa(.clk(clk),.reset(reset),.d(d),.s(s),.q(q));
  initial begin
    $dumpfile("universal_shiftreg.vcd");
    $dumpvars(1);
  end
  initial begin
    clk=1;
    reset=0;
    #3 s=00;d=1001;
    #4 s=01;
    #5 s=11;
    #3 s=10;
    $display(s,d,q);
  
    #46$finish;
  end
endmodule
  
    
