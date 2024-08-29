class cyclic_dependencies;
  randc bit[7:0] addr;
  constraint over_c { addr > 100 && addr < 50; } 
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
