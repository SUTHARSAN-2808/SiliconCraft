module array_methods;
  int a[$]='{7,2,5,9};
  int b[$]='{};
  int d[]='{2,3,8,1};
  int f[4]='{1,8,5,5};
  initial begin
    $display("1.) ",a.sum);  
    $display("1.) ",d.product); 
    $display("1.) ",f.min); 
    $display("1.) ",a.max); 
    b=f.unique;
    $display("1.) ",b); 
    b=b.find with(item>4);
    $display("1.) ",b); 
     b=b.find_first with(item>4);
    $display("1.) ",b);      
     b=f.find_index with(item>4);
    $display("1.) ",b); 
  end
endmodule
