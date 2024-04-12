module two_dimensional_mixed_array;
  
  bit [3:0] a[2:0];

  initial begin
    a[2]=4'ha;
    a[1]=4'h1;
    a[0]=4'hf;
    foreach(a[i])
      $display("a[%d]=%h",i,a[i]);
  end
endmodule
  
