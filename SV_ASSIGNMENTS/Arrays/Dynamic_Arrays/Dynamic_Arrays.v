//Dynamic array
module dynamic_array;
  int bd[];
  int b[6]='{9,4,1,6,0,3};
  
  initial begin
   bd=new[6];
    foreach(bd[i])begin
      $display("bd[%d]=%d",i,i*2);
    end
    b.sort();
    $display(b);
  end
  
endmodule
