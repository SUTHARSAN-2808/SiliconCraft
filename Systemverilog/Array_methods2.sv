module array_methods;
  int q[$:3]='{1,3,5,7};
  int d[]='{9,1,8,3,4,4};
  int f[6]='{1,6,2,6,8,6};
  initial begin
    int count;
      $display(q);
    $display(q.sum);
    $display(q.product);
    $display(q.min);
    $display(q.max);
    $display(f.unique);
    $display(d.find with(item>3));
    $display(d.find_index with(item>3));
    $display(q.find_index with(item>99));
    $display(d.find_first_index with(item==8));
    $display(d.find_last with(item==4));
    $display(d.find_last_index with(item==4));
    
    $display(d.sum with((item>7)*32'd1));
    $display(d.sum with((item>7)*item));
    $display(d.sum with(item<8));
    $display(d.sum with((item<8)?item:0));
  end
endmodule
