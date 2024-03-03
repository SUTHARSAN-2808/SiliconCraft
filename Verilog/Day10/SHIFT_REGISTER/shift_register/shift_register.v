module shift_registers;
  initial begin
    $display("4'b0101 << 1=%b",(4'b0101<<1));
    $display("4'b0111 << 1=%b",(4'b0111<<1));
    $display("4'b0101 << 1=%b",(4'b0101 >>1));
    
  end
endmodule
