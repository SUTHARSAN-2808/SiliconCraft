//Synchronous FIFO
module sync_fifo(input clk,
                input reset,
                 input [3:0]datain,
                 input  wen,
                 input ren,
                 output full,empty,
                 output reg [3:0]dataout);
  reg [3:0] w_ptr,r_ptr;
  reg [3:0] count;
  reg [3:0]memory[15:0];
  
  always @(posedge clk)begin
    if(reset)begin
      count<=1'b0;
      w_ptr<=1'b0;
      r_ptr<=1'b0;
    end
    
    else if(wen==1 && !full && ren==1'b0)begin
      memory[w_ptr]<=datain;
      w_ptr<=w_ptr+1;
      count<=count+1;
    end
    
    else if(ren==1 && !empty && wen==1'b0)begin
      dataout<=memory[r_ptr];
      r_ptr<=r_ptr+1;
      count<=count-1;
    end
  end
  
  assign full=((count==16)?1:0);
  assign empty=((count==0)?1:0);
endmodule


//  if(t.rd==1'b0 )begin
//         $display($time,"write operation=%d write operation occurs",t.rd);
//       write();
//       end
//       else if(t.rd==1'b1 )
//         $display($time,"Read operation=%d read operation occurs",t.rd);
//       read();
