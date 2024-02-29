module equality_operator_tb;
  reg [2:0] a,b;
  wire [1:0] y1,y2,y3,y4;
  //instantiating design with testbench
  equality_operator aa(a,b,y1,y2,y3,y4);
//Dumping the values
  initial begin
    $dumpfile("equality_operator.vcd");
    $dumpvars(1);
  end
  //Entering the values
  initial begin
    a=011;b=3;#5
    $monitor("a=%b b=%d y1=%b y2=%b y3=%b y4=%b",a,b,y1,y2,y3,y4);
    $finish;
  end
endmodule
