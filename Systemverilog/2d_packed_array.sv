module two_dimensional_packed_array;
  
  bit [3:0][7:0] a;

  initial begin
    a=32'ha253_cd23;
    $display("a=%h",a);
  end
endmodule
  
