module arithmetic_tb;
  reg [2:0] a,b;
  wire [3:0] y1,y2,y3,y4;
//instantiate the design with testbench
  arithmetic aa(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4));
//Dumping the values of design with testbench
  initial begin
    $dumpfile("arithmetic.vcd");
    $dumpvars(1,arithmetic_tb);
  end
//Entering the values
  initial begin  
     $monitor("a=%d b=%d y1=%d y2=%d y3=%d y4=%d",a,b,y1,y2,y3,y4);    

    a=010;b=001;#8   
    $finish;
     end       
endmodule
    
