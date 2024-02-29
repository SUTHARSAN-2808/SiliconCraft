module tsk(input [4:0]a,
           input [4:0]b,
           output reg [4:0]add);
  task  sk(input [4:0]ain,input [4:0]bin,output reg [4:0]x);
    x=ain+bin; 
    $display("add=%d",x); 
  endtask
   initial begin
     sk(4,9,add);  
     $display("add=%d",add);      
   end
endmodule
