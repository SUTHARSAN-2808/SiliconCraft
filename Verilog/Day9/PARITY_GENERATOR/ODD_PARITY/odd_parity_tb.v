module oddparity_tb;
  reg a,b,c;
  wire z;
//instantiate
  odd_parity_generator k(a,b,c,z);
//Dumping
  initial begin
    $dumpfile("odd_parity_generator.vcd");
    $dumpvars(1);
  end
//Entering the value
  initial begin
    repeat (6) begin
      a=$random ;b=$random ;c=$random;#5
      $display(a,b,c,z);
    end
      $finish;
  end
endmodule
