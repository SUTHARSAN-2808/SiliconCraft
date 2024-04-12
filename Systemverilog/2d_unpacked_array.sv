module two_dimensional_unpacked_array;
  
  bit a[3:0][3:0];

  initial begin
    a[3]=4'ha;
    a[2]=4'h1;
    a[1]=4'hf;
    a[0]=4'h8;
    foreach(a[i])
      $display("a[%d]=%h",i,a[i]);
  end
endmodule
  

