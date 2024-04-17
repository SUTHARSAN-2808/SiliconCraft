module for_loop;
  int mem[0:2];
  initial begin
    for(int i=0;i<3;i++)begin
      for(int j=0;j<4;j++)begin
        mem[i]=j+3;
        $display("mem[%d][%d]=%d",i,j,mem[i]);
      end
    end
  end
endmodule
