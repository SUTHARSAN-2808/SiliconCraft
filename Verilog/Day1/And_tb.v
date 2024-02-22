module and_tb;
  reg x,y;
  wire z;
  
// instantiate 
  And and2(.x(x),.y(y),.z(z));
 
//dumping the file
initial begin
  $dumpfile("And.vcd");
  $dumpvars(1,and_tb);
end
initial begin
  x=1'b0;y=1'b0;#10
  x=1'b0;y=1'b1;#10
  x=1'b1;y=1'b0;#10
  x=1'b1;y=1'b1;#10
  $finish;
end 
//monitor is used to display the output values and waveform
  always@(*)
    $monitor("time=%0t \tINPUT VALUES:\t x=%b y=%b\t output value z=%b",$time,x,y,z);
  
endmodule
  
  
