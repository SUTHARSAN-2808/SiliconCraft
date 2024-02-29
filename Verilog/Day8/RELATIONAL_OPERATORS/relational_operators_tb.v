module relational_operator_tb;
  reg [3:0] a,b;
  wire   y1,y2,y3,y4;
//instantiate
  relational_operator aa(a,b,y1,y2,y3);
//Dumping the values
  initial begin
    $dumpfile("logical_operator.vcd");
    $dumpvars(1);
  end
//Entering the values
  initial begin
    $monitor("a=%d b=%d y1=%b y2=%b y3=%b",a,b,y1,y2,y3);
    a=4;b=8;#4
    $finish;
  end
endmodule

