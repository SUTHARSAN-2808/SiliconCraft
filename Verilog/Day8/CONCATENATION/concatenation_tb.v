module concatenation_operators_tb;
  reg [3:0] a,b;
  wire [50:0] y1,y2,y3;
//instantiating
  concatenation x(a,b,y1,y2,y3);
//Dumping 
  initial begin
    $dumpfile("concatenation.vcd");
    $dumpvars(1);
  end
//Entering
  initial begin
    a=$random;b=$random;#8
    $display("a=%b b=%b y1=%b y2=%b y3=%b",a,b,y1,y2,y3);
    $finish;
  end
endmodule

