module factorial_tb;
  reg [3:0]a;
  wire [20:0]fact;
  factorial_repeat b(a,fact);
  initial begin
    $dumpfile("factorial.vcd");
    $dumpvars(1);
   end
  initial begin
    repeat (5)begin
  
      #4 a=$random;
      $display("a=%d ",a);
    end
      #35 $finish;
    
  end
endmodule
