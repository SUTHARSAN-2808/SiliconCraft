class cyclic_dependencies;
  randc bit[7:0] addr;
  constraint c1{ soft addr==50;}
  constraint c2{addr==100;}
endclass

module m1;
  cyclic_dependencies cycle;
  initial begin
    cycle=new();
    repeat(10)begin
      cycle.randomize();
      $display("addr = %d ",cycle.addr);
    end
  end
endmodule
