module bitwise_operators_tb;
  reg [5:0] a,b;
  wire [5:0] o1,o2,o3,o4,o5;
//instantiate the design with testbench
  bitwise_operators dd(a,b,o1,o2,o3,o4,o5);
//Dumping the values
  initial begin
    $dumpfile("bitwise_operators.vcd");
    $dumpvars(1);
  end
//Entering the values
  initial begin
    $monitor("a=%b b=%b o1=%b o2=%b o3=%b o4=%b o5=%b",a,b,o1,o2,o3,o4,o5);
    a=$random;b=$random;#4
    $finish;
  end
endmodule
  

