module forever_loop;
  bit clk;

  initial begin
    clk=0;
  
  forever begin
    #5 clk=!clk;
     $monitor("clk=%d",clk);
  end
  end
  initial begin
    #20 $finish;
  end
endmodule
