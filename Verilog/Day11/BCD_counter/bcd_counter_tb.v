module bcd_counter_tb;
  reg clk,reset;
  wire [3:0]cout;
  bcd_counter aa(.clk(clk),.reset(reset),.cout(cout));
   always #5 clk=~clk;
  initial begin
    clk=0;  
    reset=1;
    #50 reset=0;
    #200 $finish;   
  end
    
endmodule
    
  
