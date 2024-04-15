module three_dimensional_packed_array;
  logic [1:0][3:0][5:0]a;
  initial begin
    a[1]=24'hface48;
    a[0]=24'h1a9764;
    foreach(a[i])
      $display("a[%h]=%h",i,a[i]);
    a=48'hface02_cafe09;
    $display("a=%h",a);
    foreach(a[i])begin
      $display("a[%d]=%h",i,a[i]);
    foreach(a[i][j])
      $display("a[%d][%d]=%h",i,j,a[i][j]);
    end
  end
endmodule
