module func_return_void;
  
  initial
  begin
    display("Hi");
    display("\t passing string to function for displaying");
  end

  function void display(string str);
    $display("%s",str);
  endfunction 
endmodule 
