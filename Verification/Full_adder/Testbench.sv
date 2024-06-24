`include "Test.sv"
`include "Interface.sv"

module testbench;
  inter in();
  test ts;
  mailbox m;
  full_adder fa(.a(in.a),
                .b(in.b),
                .cin(in.cin),
                .sum(in.sum),
                .cout(in.cout));
  
  initial begin
    m=new();
    ts=new(in,m);
    fork
      ts.memory;
      ts.run;
    join
  end
 initial begin
  // forever #10 begin
   
  $display("a=%d b=%d cin=%d sum=%d cout=%d",in.a,in.b,in.cin,in.sum,in.cout);
   
   #50 $finish;
//end
 end
  
endmodule
