module shifting_operators_tb;
  reg[3:0] a,b;
  wire[3:0] y1,y2,y3,y4,y5,y6;
//Instantiate the design with testbench
  shifting_operators so(a,b,y1,y2,y3,y4,y5,y6);
//Dumping the values
  initial begin
    $dumpfile("shifting_operator.vcd");
    $dumpvars(1);
  end
//Entering the values
  initial begin
    repeat (4)begin
    a=$random;b=$random;#4
     
      $display("a=%b b=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b",a,b,y1,y2,y3,y4,y5,y6);
     
    end
    #30 $finish;
  end
endmodule
    

