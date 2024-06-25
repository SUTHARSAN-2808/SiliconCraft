module two_state_datatypes;
  
  int idata;  // 32 bit signed
  shortint sidata;   //  16 bit signed
  longint lidata;    //64 bit signed
  bit bdata;  //>=1 bit unsigned
  byte bydata;   //8 bit signed
 
  initial begin
    
    
    $display("Before initialization");
    $display("idata=%b",idata);
    $display("sidata=%b",sidata);
    $display("lidata=%b",lidata);
    $display("bdata=%b",bdata);
    $display("bydata=%b",bydata);
  
    
    $display("After initialization");
    idata=32'h10100000;
    sidata=16'h0001;
    lidata=64'h0000_1111_1010_0011;
    bdata=1'b1;
    bydata=8'b10010011;

    $display("idata=%b",idata);
    $display("sidata=%b",sidata);
    $display("lidata=%b",lidata);
    $display("bdata=%b",bdata);
    $display("bydata=%0b",bydata);
    $display("bydata=%0d",bydata);

    
  end
  
  
endmodule
