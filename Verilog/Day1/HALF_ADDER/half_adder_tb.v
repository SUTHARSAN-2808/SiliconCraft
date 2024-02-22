module halfadder_tb;
  reg a,b;
  wire sum,carry;
//instantiate the design variables with the testbench
  half_adder ha1(.a(a),.b(b),.sum(sum),.carry(carry));
//dumping the values of design into testbench
     initial begin
     $dumpfile("half_adder.vcd");
     $dumpvars(1,halfadder_tb);
     end
//Entering the values
     initial begin
    //  a=1'b0;b=1'b0;
       $display("dtime=%d a=%d,b=%d,sum=%d,carry=%d",$time,a,b,sum,carry);
       $monitor("mtime=%d a=%d,b=%d,sum=%d,carry=%d",$time,a,b,sum,carry);
       a=1'b0;b=1'b1;#4 
      
       $display("dtime=%d =%d,b=%d,sum=%d,carry=%d",$time,a,b,sum,carry);
          a=1'b1;b=1'b0;#4
       $display("dtime=%d a=%d,b=%d,sum=%d,carry=%d",$time,a,b,sum,carry);
                     a=1'b1;b=1'b1;#4
       //$monitor("time=%d a=%d,b=%d,sum=%d,carry=%d",$time,a,b,sum,carry);
                   $finish;
                 end
                 endmodule
                 
                 
