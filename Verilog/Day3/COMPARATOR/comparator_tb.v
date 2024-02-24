module comparator_tb;
  reg [3:0] a,b;
  wire Aeqb,Agtb,Altb;
//instantiate the design with testbench
  comparator comp(.a(a),.b(b),.Aeqb(Aeqb),.Agtb(Agtb),.Altb(Altb));
  always #4 a=$random%16;
  always #4 b=$random%16;
//Dumping the values
  initial begin
    $dumpfile("comparator.vcd");
    $dumpvars(1,comparator_tb);
  end
//Entering the values
  initial begin
    a=4'b0000;#10
    $display("a=%d b=%d Aeqb=%d Agtb=%d Altb%d",a,b,Aeqb,Agtb,Altb);
    b=4'b0000;#10
    $display("a=%d b=%d Aeqb=%d Agtb=%d Altb%d",a,b,Aeqb,Agtb,Altb);
    $finish;
  end
endmodule
