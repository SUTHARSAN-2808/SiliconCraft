module foreach_loop;
  bit [2:0][3:0] aa;
  
  initial begin
    aa='habc;
    $display("aa=%h",aa);
    foreach(aa[i])begin
      $display("aa[%d]=%h",i,aa[i]);
      foreach(aa[i][j])
        $display("aa[%d][%d]=%d",i,j,aa[i][j]);
    end
  end
endmodule
