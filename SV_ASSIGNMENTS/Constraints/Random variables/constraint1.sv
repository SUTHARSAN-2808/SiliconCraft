class cyclic_dependencies;
  randc bit[7:0] data,addr;
  constraint c1{addr<30 ; data<addr;}
endclass

module m1;
  cyclic_dependencies cycle;
  initial begin
    cycle=new();
    repeat(10)begin
      cycle.randomize();
      $display("addr = %d data =%d",cycle.addr,cycle.data);
    end
  end
endmodule
