module nor_tb;
  reg x,y;
  wire z;
//instantiate the design with test bench
  norgate nor2(.x(x),.y(y),.z(z));
//dumping the values 
  initial begin
  $dumpfile("norgate.vcd");
  $dumpvars(1,nor_tb);
  end
//Entering the values
  initial begin
    $monitor("mtime %d x=%d y=%d z=%d",$time,x,y,z);
  x=0;y=0;#4
  x=0;y=1;#41
  x=1;y=0;#90
  x=1;y=1;#4
    $finish;
  end
endmodule

    
    
  
