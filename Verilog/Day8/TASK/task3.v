module operation(input [3:0]a,
                
                 output reg[3:0]d);
  task dood(input [3:0]b,output reg[3:0]c);
    begin
    assign  c=~b;
    end
    endtask
    initial begin
      dood(1001,d);
      $display("ans=%b",d);
        end
        endmodule
