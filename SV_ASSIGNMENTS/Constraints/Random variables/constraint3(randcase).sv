module m1;
  initial begin
    for(int i=1;i<10;i++)begin
      randcase
      3:$display("50");
      7:$display("100");
      endcase
    end
  end
endmodule
