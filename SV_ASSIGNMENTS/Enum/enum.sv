module enumm;
  
  enum {good,bad,ugly}nature;
  
  initial begin
    
    $display(nature.first);
    $display(nature.next);
    $display($size(nature));
    for(byte i=0;i<$size(nature);i=i+1)begin
      $display("Nature names is %s and its value=%0d",nature.name,nature);
      nature=nature.next;
    end
  end
endmodule
