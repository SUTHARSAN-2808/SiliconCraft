module enumm;
  
  enum [4:0]{good,bad,ugly,better,surendhar}nature;
  
  initial begin
    
    $display(nature.first);
    $display(nature.next);
    $display($size(nature));
    for(int i=0;i<=$size(nature);i=i+1)begin
      $display("Nature names is %s and its value=%0d",nature,nature);
      nature=nature.next;
    end
  end
endmodule
