module logical_operator_tb;
  reg [1:0] a,b;
  wire [1:0] y1,y2,y3,y4;
//instantiate
  logical_operator aa(a,b,y1,y2,y3);
//Dumping the values
  initial begin
    $dumpfile("logical_operator.vcd");
    $dumpvars(1);
  end
//Entering the values
  initial begin
    $monitor("a=%b b=%b y1=%b y2=%b y3=%b",a,b,y1,y2,y3);
    a=1;b=0;#4
    $finish;
  end
endmodule

