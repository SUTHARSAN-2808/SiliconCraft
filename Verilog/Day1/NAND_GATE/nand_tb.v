module nand_tb;
  reg x,y;
  wire z;
//instantiate the design's variable with the testbench variable
  nand_gate nand3(.x(x),.y(y),.z(z));
  
//dumping the values of the design to the testbench
  initial begin
  $dumpfile("nand_gate.vcd");
  $dumpvars(1,nand_tb);
  end
//initial the values to the variable
  initial begin 
     x=1'b0;y=1'b0;#5
    $display("time=%d, x=%d y=%d z=%d ",$time,x,y,z);
     x=1'b0;y=1'b1;#5
    $display("time=%d, x=%d y=%d z=%d ",$time,x,y,z);
     x=1'b1;y=1'b0;#5
    $display("time=%d, x=%d y=%d z=%d ",$time,x,y,z);
     x=1'b1;y=1'b1;#5
    $display("time=%d, x=%d y=%d z=%d ",$time,x,y,z);
    $finish;
  end
endmodule
   
  
  
