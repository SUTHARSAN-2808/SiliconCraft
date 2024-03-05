module bcd_counter(input reg clk,
                  input  reset,                 
                   output reg [3:0]cout);
  always @(posedge clk ) begin
    if(reset)
      cout<=4'b0000;
    else if (cout==4'b1010)
      cout<=4'b0000;
    else
      cout<=cout+1;
  end
initial begin
  $monitor("clk=%b reset=%b cout=%b",clk,reset,cout);
  end
 
endmodule
